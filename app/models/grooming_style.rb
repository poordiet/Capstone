class GroomingStyle < ApplicationRecord
  belongs_to :style
  belongs_to :grooming_appointment

  # Form Validations
  validates :style_id, presence: true
end
