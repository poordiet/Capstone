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
  validates :customer_primary_phone, presence: true, length: {minimum: 12}
  validates :customer_secondary_phone, length: {minimum: 12}, allow_blank: true
  validates :customer_zip, length: { minimum: 5 }, allow_blank: true
  validate :date_obtained_no_future
  validate :no_repeat_customer, :on => :create

  # Validates that a duplicate customer is not entered
  def no_repeat_customer
    if customer_first_name.present? && customer_last_name.present? && customer_primary_phone.present?
      Customer.all.each do |customer|
        if self.customer_first_name.upcase == customer.customer_first_name.upcase &&
           self.customer_last_name.upcase == customer.customer_last_name.upcase &&
           self.customer_primary_phone == customer.customer_primary_phone

           errors.add(:customer, "already exists")

        end
      end
    end
  end
  # Checks to see if the date_obtained is a future date
  def date_obtained_no_future
    if date_obtained.present? && date_obtained > Date.today
      errors.add(:date_obtained, "can't be in the future")
    end
  end  

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
