Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]
  resources :users, only: [:new, :create]
  get '/users/welcome', to: 'users#welcome'
end
