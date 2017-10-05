Rails.application.routes.draw do
  get 'owners/new'

  root to: "breweries#index"

  resources :breweries
end
