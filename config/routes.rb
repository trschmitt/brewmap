Rails.application.routes.draw do
  root to: "breweries#index"

  resources :session, only: [:new, :create, :destroy]
  resource :owners, only: [:new, :create]
  resources :breweries
end
