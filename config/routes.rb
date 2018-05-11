Rails.application.routes.draw do
  resources :bs_types
  resources :bs_dbs
  resources :bs_columns
  resources :bs_tables
  resources :bs_projects do
    resources :bs_systems
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'bs_projects#index'
end
