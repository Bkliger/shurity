Rails.application.routes.draw do


  root  to: "categories#index"
  post    "/users",           to: "users#create"
  get "/categories/:cat_id/users/new", to: "users#new", as: "new_user"

end
