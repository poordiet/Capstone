class Customer < ApplicationRecord
  belongs_to :state
  belongs_to :customer_status
  has_many :pets, inverse_of: :customer
  
  
  # Nested Forms
  accepts_nested_attributes_for :pets, reject_if: :all_blank, allow_destroy: true

  
  # Form Validations
  validates :date_obtained, presence: true
  validates :customer_first_name, presence: true
  validates :customer_last_name, presence: true
  validates :customer_primary_phone, presence: true
  
end
