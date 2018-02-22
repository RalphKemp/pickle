Rails.application.routes.draw do
  devise_for :workers
  devise_for :users
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :bookings
end




