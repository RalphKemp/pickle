Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :workers
  resources :bookings
  devise_for :users
end




