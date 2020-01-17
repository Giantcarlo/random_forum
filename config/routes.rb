Rails.application.routes.draw do
  

  get 'comments/create'
  get 'comments/update'
  root 'posts#index'
  devise_for :users 

  resources :posts
  resources :users, only: [:edit, :update]

end
