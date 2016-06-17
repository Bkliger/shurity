Rails.application.routes.draw do


  devise_for :users
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
#
#
# new_user_session GET    /users/sign_in(.:format)                                              devise/sessions#new
#      user_session POST   /users/sign_in(.:format)                                              devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)                                             devise/sessions#destroy
#     user_password POST   /users/password(.:format)                                             devise/passwords#create
# new_user_password GET    /users/password/new(.:format)                                         devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)                                        devise/passwords#edit
#                   PATCH  /users/password(.:format)                                             devise/passwords#update
#                   PUT    /users/password(.:format)                                             devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                                               devise/registrations#cancel
# user_registration POST   /users(.:format)                                                      devise/registrations#create
# new_user_registration GET    /users/sign_up(.:format)                                              devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)                                                 devise/registrations#edit
#                   PATCH  /users(.:format)                                                      devise/registrations#update
#                   PUT    /users(.:format)                                                      devise/registrations#update
#                   DELETE /users(.:format)                                                      devise/registrations#destroy
