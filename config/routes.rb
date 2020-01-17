Rails.application.routes.draw do
  

  root 'posts#index'
  devise_for :users 

  resources :posts
  resources :users, only: [:edit, :update]
  resources :posts do
    resources :comments, only: [:create, :update, :delete]
  end

end
