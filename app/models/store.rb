class Store < ApplicationRecord
  belongs_to :state
  belongs_to :employee
  
  has_many :employee_stores
  has_many :grooming_appointments
end
