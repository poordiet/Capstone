class PetVaccination < ApplicationRecord
  #attr_accessible :vaccine_id, :vaccine_name
  belongs_to :vaccine
  belongs_to :pet
end
