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
  

  # Calculates Expiration date for Pet Vaccination in the Customer Nested Form
  after_save :calculate_expiration

  private
    def calculate_expiration    
     self.pets.each do |pet|
       pet.pet_vaccinations.each do |pet_vaccination|
        pet_vaccination.calculate_expiration(pet_vaccination.date_given, pet_vaccination.duration, pet_vaccination.date_expire)
        pet_vaccination.save
      end
    end
    end
end
