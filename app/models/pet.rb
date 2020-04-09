class Pet < ApplicationRecord
  belongs_to :customer, inverse_of: :pets
  belongs_to :pet_status
  has_many :pet_photos
  has_many :pet_vaccinations
  has_many :vaccines, through: :pet_vaccinations
  has_many :grooming_appointments

  accepts_nested_attributes_for :pet_vaccinations, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :vaccines, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :pet_photos, reject_if: :all_blank, allow_destroy: true

    # Form Validations
    validates :pet_name, presence: true
    validates :pet_status, presence: true
    validates :pet_gender, presence: true
    validates :spayed_neutered, presence: true
    validates :pet_treat, presence: true
    validates :pet_color, presence: true
    validates :pet_breed, presence: true
    validates :pet_weight, presence: true
    validate :birthday_no_future
  
    # Calculates Expiration date for Pet Vaccination in the Pet Nested Form
  after_save :calculate_expiration

  private
    def calculate_expiration    
       self.pet_vaccinations.each do |pet_vaccination|
        pet_vaccination.calculate_expiration(pet_vaccination.date_given, pet_vaccination.duration, pet_vaccination.date_expire)
        pet_vaccination.save
      end
  end

  # Checks to see if the date_obtained is a future date
  def birthday_no_future
    if pet_birthdate.present? && pet_birthdate > Date.today
      errors.add(:pet_birthdate, "can't be in the future")
    end
  end  
end
