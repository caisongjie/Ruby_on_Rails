Rails.application.routes.draw do

  post "login", to: 'access#create'
  get "logout", to: 'access#destroy'


  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
  resources :carts
  resources :orders
  resources :lineitems
  
  get "shopper", to: 'shopper#index'

  root "shopper#index", as: 'root'
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
