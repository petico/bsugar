Rails.application.routes.draw do
  resources :bs_types
  resources :bs_dbs
  resources :bs_columns
  resources :bs_tables
  resources :bs_systems
  resources :bs_projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'bs_projects#index'
end
