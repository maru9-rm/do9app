Rails.application.routes.draw do
  root to: "boards#index"
  
  resources :boards
  resources :tasks
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :profile


end
