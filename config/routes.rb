Rails.application.routes.draw do
  resources :employee_statuses
  resources :incident_statuses
  resources :pet_statuses
  resources :customer_statuses
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
  get 'dashboard/index'
  resources :customers
  get 'reports/index'
  get 'reports/customer_reports'
  get 'reports/sales_reports'
  get 'reports/vaccine_reports'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :charts do
    get 'sales_by_day'
  end
  root to: 'dashboard#index'
end


