Rails.application.routes.draw do
  root to: "status#index"
  resources :status, only: [:index]
  resources :contacts, only: [:new, :create]
  resources :productions, only: :index
end
