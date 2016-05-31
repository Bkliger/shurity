Rails.application.routes.draw do


  root  to: "categories#index"

  get  "/categories/:cat_id/answers/new",       to: "answers#new",        as: "new_answer"
  post "/answers", to: "answers#create"
  get "/users/:user_id/answers/edit", to: "answers#edit", as: "edit_answers"
  post "/answers/update", to: "answers#update"


  get "/about", to: "users#about", as: "about"

  get "/categories/:cat_id/users/:user_id/products", to: "products#index",  as: "products"
  get "/categories/:cat_id/users/:user_id/products/:id", to: "products#show", as: "product"



  # post    "/users",           to: "users#create"
  # get "/categories/:cat_id/users/new", to: "users#new", as: "new_user"
  # get "categories/:cat_id/questions", to:"questions#index", as: "questions"


end
