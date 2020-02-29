class PetPhoto < ApplicationRecord
  belongs_to :pet
  belongs_to :photo_type
  belongs_to :grooming_appointment, optional: true
  has_one_attached :image
end
