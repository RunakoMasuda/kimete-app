Rails.application.routes.draw do
  devise_for :users
  #get 'customizes/index'
  root to: "customizes#index"
  resources :customizes, only: [:new]
  resources :users, only: [:edit, :update]
end

