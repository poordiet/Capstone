class Pet < ApplicationRecord
  belongs_to :customer
  belongs_to :pet_status
  has_many :pet_photos
  has_many :pet_vaccinations
  has_many :vaccines, through: :pet_vaccinations
  has_many :grooming_appointments

  accepts_nested_attributes_for :pet_vaccinations, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :vaccines, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :pet_photos, reject_if: :all_blank, allow_destroy: true
end
