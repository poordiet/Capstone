class GroomingAppointment < ApplicationRecord
  belongs_to :pet
  belongs_to :store
  belongs_to :payment_type, optional: true
  has_many :grooming_styles
  has_many :styles, through: :grooming_styles
  has_many :grooming_services
  has_many :services, through: :grooming_services
  has_many :pet_photos
  has_many :incidents


  accepts_nested_attributes_for :grooming_services, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :services, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :grooming_styles, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :styles, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :pet_photos, reject_if: :all_blank, allow_destroy: true

  

  
end
