Rails.application.routes.draw do
  
  root to: 'maps#current'  #Principal page
  
  resources :movements, only: [:create] #Mueve una miniatura

  resources :characters, except: [:show]
  resources :character_views, only: [:create] #Es el js que se hace con js para la vista del mapa

  resources :maps, only: [:new, :edit, :create, :index] #Solo para el master
  resources :map_visibilities, only: [:create, :destroy] #Solo para el master

  resources :tiles, only: [:update] #Solo para el master
  post 'edit_tile', to: 'tiles#edit_tile'

  resources :attacks, only: [:create, :destroy]
  resources :armors, only: [:create, :destroy]
  resources :known_spells, only: [:create, :destroy]
  resources :prepared_spells, only: [:create, :destroy]


  get 'login', to: 'basic_pages#login'
  post 'login', to: 'basic_pages#register'  
end
