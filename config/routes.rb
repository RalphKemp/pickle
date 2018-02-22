Rails.application.routes.draw do
  devise_for :workers, controllers: {
    sessions: 'workers/sessions'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get 'dashboard', to: 'users#user_dashboard'

  resources :bookings
end




