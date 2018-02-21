Rails.application.routes.draw do
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :workers
  devise_for :users
end
