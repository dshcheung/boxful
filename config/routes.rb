Rails.application.routes.draw do

  devise_for :admins
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  
  root 'static_pages#index'

  resources :admins, only: [:index]

  resources :user_pages, only: [:index, :show]

  resources :delivery_addresses, only: [:create]

  resources :orders, only: [:index, :create]

  resources :pickups, only: [:index, :create]

  resources :boxes, only: [:update]

end
