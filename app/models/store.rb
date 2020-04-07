class Store < ApplicationRecord
  belongs_to :state

  has_many :employees, through: :employee_stores
  has_many :employee_stores
  has_many :employees
  has_many :grooming_appointments

  validates :store_name, presence: true
  validates :store_address, presence: true
  validates :store_city, presence: true
  validates :store_zip, presence: true
  validates :store_phone, presence: true
  
end
