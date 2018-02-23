Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'dashboard', to: 'users#dashboard'
  get 'about', to: 'pages#about'
  get 'workers', to: 'users#index'

  resources :requests, only: [:new, :create]
  resources :users, only: [:show]
  resources :workers, only: [:index, :show]
end




