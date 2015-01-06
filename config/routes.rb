Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
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

  resources :delivery_addresses
#      delivery_addresses GET    /delivery_addresses(.:format)          delivery_addresses#index
#                         POST   /delivery_addresses(.:format)          delivery_addresses#create
#    new_delivery_address GET    /delivery_addresses/new(.:format)      delivery_addresses#new
#   edit_delivery_address GET    /delivery_addresses/:id/edit(.:format) delivery_addresses#edit
#        delivery_address GET    /delivery_addresses/:id(.:format)      delivery_addresses#show
#                         PATCH  /delivery_addresses/:id(.:format)      delivery_addresses#update
#                         PUT    /delivery_addresses/:id(.:format)      delivery_addresses#update
#                         DELETE /delivery_addresses/:id(.:format)      delivery_addresses#destroy

  resources :orders
#                  orders GET    /orders(.:format)              orders#index
#                         POST   /orders(.:format)              orders#create
#               new_order GET    /orders/new(.:format)          orders#new
#              edit_order GET    /orders/:id/edit(.:format)     orders#edit
#                   order GET    /orders/:id(.:format)          orders#show
#                         PATCH  /orders/:id(.:format)          orders#update
#                         PUT    /orders/:id(.:format)          orders#update
#                         DELETE /orders/:id(.:format)          orders#destroy
end
