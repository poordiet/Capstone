class Pet < ApplicationRecord
  belongs_to :customer
  has_many :pet_photos
  has_many :vaccines, through: :pet_vaccinations
end
