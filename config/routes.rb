Rails.application.routes.draw do
  get 'customizes/index'
  root to: "customizes#index"
end

