Rails.application.routes.draw do


  root  to: "categories#index"

  get  "/categories/:cat_id/answers/new",       to: "answers#new",        as: "new_answer"
  post "/answers", to: "answers#create"
  get "/users/:user_id/answers/edit", to: "answers#edit", as: "edit_answers"
  put "/answers/update", to: "answers#update"


  get "/about", to: "users#about", as: "about"

  get "/categories/:cat_id/users/:user_id/products/:batch_no/index", to: "products#index",  as: "products"
  get "/categories/:cat_id/users/:user_id/products/:id", to: "products#show", as: "product"

  #-------------catch all--------------------------------------------------------------#
    get "*any", to: redirect('/404'), via: :all

end
