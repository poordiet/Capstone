Rails.application.routes.draw do
  devise_for :users, :path=> 'u'
  resources :login
  resources :users do
    member do
      patch :update_password
      put :update_password
    end
  end
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
  resources :pets do
    resources :grooming_appointments
  end
  resources :customers do
    resources :pets
  end
  resources :photo_types
  resources :service_statuses
  resources :payment_types
  resources :styles
  resources :vaccines
  resources :states
  get 'dashboard/index'
  resources :customers
  get 'reports/current_and_last_year_sales_per_month_report'
  get 'reports/most_profitable_service_report'
  get 'reports/lifetime_sales_per_store_report'
  get 'reports/customers_gained_report'
  get 'reports/most_profitable_customers'
  get 'reports/customers_with_most_appointments_report'
  get 'reports/vaccines_expiring_report'
  get 'reports/pet_birthdays_report'
  get 'reports/index'
  get 'reports/customer_reports'
  get 'reports/sales_reports'
  get 'reports/vaccine_reports'
  get 'login/index'
  get 'users/:id/edit_password', to: 'users#edit_password', as: 'edit_password'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :charts do
    get 'sales_by_day'
  end
  root to: 'dashboard#index'
end


