Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/create'
  
  #post 'toppage/index', to: 'toppage#index'  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'toppages#index'
  resources :toppage
  #post 'toppage/index', to: 'toppage#index'
  
end
