Rails.application.routes.draw do
  root 'toppages#index'
  resources :users
  resources :toppages
  
end
