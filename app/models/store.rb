class Store < ApplicationRecord
  belongs_to :state
  has_many :employee_stores
  has_many :grooming_appointments
end
