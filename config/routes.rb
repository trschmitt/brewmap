Rails.application.routes.draw do
  root to: "breweries#index"

  resources :breweries
end
