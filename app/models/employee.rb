class Employee < ApplicationRecord
  belongs_to :state
  has_many :stores, through: :employee_stores
end
