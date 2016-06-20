Rails.application.routes.draw do
  resources :users
  get "users/:id/posts", to: "users#posts"

  resources :posts

  get "/signin", to: "sessions#new"

end
