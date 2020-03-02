class Employee < ApplicationRecord
  belongs_to :state
  has_many :stores, through: :employee_stores

  validates :emp_first_name, presence: true
  validates :emp_last_name, presence: true
  validates :emp_primary_phone, presence: true
  

end
