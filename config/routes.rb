Rails.application.routes.draw do
  
  root to: 'maps#current'  #Principal page
  
  resources :maps, only: [:new, :edit, :create, :index] #Solo para el master

  resources :movements, only: [:create] #Mueve una miniatura

  resources :characters, only: [:show, :new, :create, :edit, :update] #show es el que se hace con js

  get 'login', to: 'basic_pages#login'
  post 'login', to: 'basic_pages#register'  
end
