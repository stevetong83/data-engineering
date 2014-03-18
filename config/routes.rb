DataEngineering::Application.routes.draw do

  root 'file_orders#index'

  resources :file_orders
  resources :orders
  
end
