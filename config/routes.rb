Rails.application.routes.draw do
  resources :db_connections do
    resources :table_list, only: [:index]
    resources :table_import, only: [:index]
  end
  
  resources :bs_types
  resources :bs_dbs

  
  resources :bs_tables do 
    resources :bs_columns
  end

  resources :bs_projects do
    resources :bs_systems
  end
  


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'bs_projects#index'
end
