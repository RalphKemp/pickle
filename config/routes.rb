Rails.application.routes.draw do
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :jobs

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

end
