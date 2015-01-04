Rails.application.routes.draw do

  devise_for :users
#        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#            user_session POST   /users/sign_in(.:format)       devise/sessions#create
#    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#           user_password POST   /users/password(.:format)      devise/passwords#create
#       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                         PATCH  /users/password(.:format)      devise/passwords#update
#                         PUT    /users/password(.:format)      devise/passwords#update
#cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#       user_registration POST   /users(.:format)               devise/registrations#create
#   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                         PATCH  /users(.:format)               devise/registrations#update
#                         PUT    /users(.:format)               devise/registrations#update
#                         DELETE /users(.:format)               devise/registrations#destroy
  
  root 'static_pages#index'
#                    root GET    /                              static_pages#index

  resources :user_pages
#              user_pages GET    /user_pages(.:format)          user_pages#index
#                         POST   /user_pages(.:format)          user_pages#create
#           new_user_page GET    /user_pages/new(.:format)      user_pages#new
#          edit_user_page GET    /user_pages/:id/edit(.:format) user_pages#edit
#               user_page GET    /user_pages/:id(.:format)      user_pages#show
#                         PATCH  /user_pages/:id(.:format)      user_pages#update
#                         PUT    /user_pages/:id(.:format)      user_pages#update
#                         DELETE /user_pages/:id(.:format)      user_pages#destroy

  resources :addresses
#               addresses GET    /addresses(.:format)           addresses#index
#                         POST   /addresses(.:format)           addresses#create
#             new_address GET    /addresses/new(.:format)       addresses#new
#            edit_address GET    /addresses/:id/edit(.:format)  addresses#edit
#                 address GET    /addresses/:id(.:format)       addresses#show
#                         PATCH  /addresses/:id(.:format)       addresses#update
#                         PUT    /addresses/:id(.:format)       addresses#update
#                         DELETE /addresses/:id(.:format)       addresses#destroy
end
