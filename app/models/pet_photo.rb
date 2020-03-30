class PetPhoto < ApplicationRecord
  belongs_to :pet
  belongs_to :photo_type
  belongs_to :grooming_appointment, optional: true
  has_one_attached :image

  validate :photo_attached

  def photo_attached
    if !self.image.attached?
      errors[:base] << 'You must attach a photo'
    end  
  end


end
