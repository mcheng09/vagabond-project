Rails.application.routes.draw do
  resources :users
  get "users/:id/posts", to: "users#posts"

  resources :posts

  get "/", to: "users#index", as: "homepage"

  get "/signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create"

end
