Rails.application.routes.draw do
  
  root to: 'tasks#index'

  get "signup", to: "users#new"

  get "login" , to: "sessions#new"
  post "login" , to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  resources :users, only: [:new, :create]
  resources :sessions, only: [:show, :new, :create, :destroy]
  resources :tasks, only: [:index,:show, :new, :create,:edit,:destroy,:update]
end
