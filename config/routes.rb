Rails.application.routes.draw do
  
  get 'users/edit'
  get 'users/update'
  root 'posts#index'
  devise_for :users 

  resources :posts
  resources :users, only: [:edit, :update]

end
