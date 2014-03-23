DataEngineering::Application.routes.draw do

  root 'uploaded_files#index'

  resources :uploaded_files
  
end
