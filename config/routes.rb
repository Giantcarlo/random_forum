Rails.application.routes.draw do
  
  root 'post#index'
  devise_for :users

  resources :post


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
