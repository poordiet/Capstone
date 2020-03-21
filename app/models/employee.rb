class Employee < ApplicationRecord
  belongs_to :state
  has_many :employee_stores
  has_many :stores, through: :employee_stores
  has_many :grooming_appointments
  has_many :grooming_services
  has_many :incidents

  accepts_nested_attributes_for :employee_stores, reject_if: :all_blank, allow_destroy: true
  
  validates :emp_first_name, presence: true
  validates :emp_last_name, presence: true
  validates :emp_primary_phone, presence: true
end