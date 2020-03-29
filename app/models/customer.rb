class Customer < ApplicationRecord
  belongs_to :state
  belongs_to :customer_status
  has_many :pets, inverse_of: :customer
  
  

  accepts_nested_attributes_for :pets, reject_if: :all_blank, allow_destroy: true

  
  
  
end
