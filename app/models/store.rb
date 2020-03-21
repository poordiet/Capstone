class Store < ApplicationRecord
  belongs_to :state
  
  has_many :employees, through: :employee_stores
  has_many :grooming_appointments
end
