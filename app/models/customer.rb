class Customer < ApplicationRecord
  belongs_to :state
  belongs_to :customer_status
  has_many :pets, inverse_of: :customer
  #has_many :vaccines, through: :pets
  #has_many :pet_vaccinations, through: :pets
  

  accepts_nested_attributes_for :pets, reject_if: :all_blank, allow_destroy: true
  #accepts_nested_attributes_for :vaccines, reject_if: :all_blank, allow_destroy: true
  #accepts_nested_attributes_for :pet_vaccinations, reject_if: :all_blank, allow_destroy: true
  
end
