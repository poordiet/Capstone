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
    validates :customer_id, presence: true
    validates :pet_treat, presence: true
    validates :pet_color, presence: true
    validates :pet_breed, presence: true
    validates :pet_weight, presence: true
end
