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


  # Nested Form Attributes
  accepts_nested_attributes_for :grooming_services, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :services, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :grooming_styles, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :styles, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :pet_photos, reject_if: :all_blank, allow_destroy: true

  # Form Validations
  validates :appt_date, presence: true
  validates :appt_time, presence: true
  validates :pet_id, presence: true
  validates :store_id, presence: true
  validates :vac_current, presence: true
  validates :vac_current_date, presence: true
  validates :appt_total, numericality: {greater_than_or_equal_to: 0,:allow_nil => true,  message: ": Total cannot be negative"}
  
end
