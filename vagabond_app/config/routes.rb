Rails.application.routes.draw do
  resources :users
  resources :posts

  get "/signin", to: "sessions#new"

end
