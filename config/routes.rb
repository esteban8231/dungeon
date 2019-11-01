Rails.application.routes.draw do
  
  root to: 'maps#current'  
  
  resources :maps, only: [:new, :edit, :create, :index]

  resources :movements, only: [:create]

  resources :characters, only: [:new, :create, :edit, :update]
  
  patch 'characters/move'


  get 'login', to: 'basic_pages#login'
  post 'login', to: 'basic_pages#register'  
end
