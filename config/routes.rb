Rails.application.routes.draw do
 
  devise_for :users
  root to: "customizes#index"

  resources :customizes, only: [:new, :create, :show] do
    resources :details, only: [:new, :create]
  end

  resources :users, only: [:edit, :update]

end

