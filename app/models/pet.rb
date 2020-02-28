class Pet < ApplicationRecord
  belongs_to :customer
  has_many :pet_photos
  has_many :pet_vaccinations
  has_many :vaccines, through: :pet_vaccinations
  has_one_attached :image

  accepts_nested_attributes_for :pet_vaccinations, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :vaccines, reject_if: :all_blank, allow_destroy: true
end
