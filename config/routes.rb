Rails.application.routes.draw do
  resources :employee_stores
  resources :grooming_services
  resources :incidents
  resources :grooming_styles
  resources :pet_vaccinations
  resources :pet_photos
  resources :grooming_appointments
  resources :stores
  resources :employees
  resources :services
  resources :pets
  resources :customers
  resources :photo_types
  resources :service_statuses
  resources :payment_types
  resources :styles
  resources :vaccines
  resources :states
  root 'datatables#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
