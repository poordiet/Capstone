class Employee < ApplicationRecord
  belongs_to :state
  has_many :employee_stores
  has_many :stores, through: :employee_stores
  
  validates :emp_first_name, presence: true
  validates :emp_last_name, presence: true
  validates :emp_primary_phone, presence: true

  accepts_nested_attributes_for :stores, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :employee_stores, reject_if: :all_blank, allow_destroy: true
end