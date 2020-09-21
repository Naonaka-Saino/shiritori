Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'toppages#index'
  resources :users, only: [:index, :show, :new, :create]
  resources :toppages
  
end
