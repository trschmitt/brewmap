Rails.application.routes.draw do
  root to: "breweries#index"

  resources :maps
  resources :breweries
end
