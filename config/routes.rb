Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'dashboard', to: 'users#dashboard'
  get 'about', to: 'pages#about'
  get 'workers', to: 'users#index'

  post 'book/:request_id/:id', to: 'pages#create_booking', as: 'create_booking'

  resources :requests, only: [:index, :show, :new, :create]
  resources :users, only: [:show]
  resources :workers, only: [:index, :show]
end




