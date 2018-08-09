Rails.application.routes.draw do
  resources :materials
  resources :equipment
  resources :maintenances
  resources :operating_procedures
  resources :standards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
