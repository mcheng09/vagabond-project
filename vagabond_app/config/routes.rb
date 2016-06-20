Rails.application.routes.draw do
  resources :users
  resources :posts

  get "/", to: "users#index", as: "homepage"

  get "/signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create"

end
