class PetPhoto < ApplicationRecord
  belongs_to :pet
  belongs_to :photo_type
  belongs_to :grooming_appointment, optional: true
  has_one_attached :image

  validate :photo_attached
  validate :attachment_is_photo
  validate :attachment_is_too_big

  def photo_attached
    if !self.image.attached?
      errors[:base] << 'You must attach a photo'
    end  
  end

  def attachment_is_too_big
    if self.image.attached? && image.byte_size > 10000000
      errors[:base] << 'Image cannot be larger than 10 MB'
    end  
  end

  def attachment_is_photo
    if self.image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
      errors[:base] << 'Image must be a JPEG or PNG'
    end  
  end


end
