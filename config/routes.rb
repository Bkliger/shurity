Rails.application.routes.draw do


  root  to: "categories#index"
  post    "/users",           to: "users#create"
  get "/categories/:cat_id/users/new", to: "users#new", as: "new_user"
  get     "/categories/:cat_id/answers/new",       to: "answers#new",        as: "new_answer"
  post    "/answers",                          to: "answers#create"
  get "categories/:cat_id/questions", to:"questions#index", as: "questions"
end
