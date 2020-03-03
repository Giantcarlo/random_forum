Rails.application.routes.draw do
  

  root 'posts#index'
  devise_for :users 

  resources :posts do 
    put 'lock_post'
  end
  resources :users, only: [:edit, :update]
  resources :posts do
    resources :comments, only: [:create, :update, :delete]
  end
  namespace :admin do
    root to: "admin/posts#index"
    resources :users, :posts
    patch '/users/:id/update_moderator_status',to:'/admin/users#update_moderator_status' , as: :update_moderator_status

  end
  

end
