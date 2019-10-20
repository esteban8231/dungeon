Rails.application.routes.draw do
  
  root to: 'maps#current'  
  
  resources :maps, only: [:new, :create, :index] do
    member do
      get 'current'
    end
  end

  resources :characters, only: [:new, :create, :edit, :update] do
    member do
      get 'move'
    end
  end

  get 'login', to: 'basic_pages#login'
  post 'login', to: 'basic_pages#register'  
end
