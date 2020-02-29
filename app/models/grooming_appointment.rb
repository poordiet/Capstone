class GroomingAppointment < ApplicationRecord
  belongs_to :pet
  belongs_to :store
  belongs_to :payment_type
  has_many :styles, through: :grooming_styles
  has_many :services, through: :grooming_services
  has_many :pet_photos
  has_many :incidents

  


end
