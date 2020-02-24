class PetVaccination < ApplicationRecord
  belongs_to :vaccine
  belongs_to :pet
end
