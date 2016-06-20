Rails.application.routes.draw do
  resources :users
  resources :posts

  get "/", to: "users#index", as: "homepage"

  get "/signin", to: "sessions#new"


end
