Rails.application.routes.draw do
  root to: "user#index"

  get "/users", to: "users#index", as: "users"

end
