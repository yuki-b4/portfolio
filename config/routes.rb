Rails.application.routes.draw do
  root to: "status#index"
  resources :status, only: [:index]
  resources :contact, only: [:new, :create]
end
