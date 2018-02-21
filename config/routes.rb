Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :workers
  devise_for :users
end
