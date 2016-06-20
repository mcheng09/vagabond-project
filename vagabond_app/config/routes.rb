Rails.application.routes.draw do
  root to: "user#index"

  get "/users", to: "users#index", as: "users"
  get "/users/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"

end
