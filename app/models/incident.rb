class Incident < ApplicationRecord
  belongs_to :grooming_appointment
  belongs_to :incident_status

  # Form Validations
  validates :incident_notes, presence: true
  validates :incident_cost, numericality: {greater_than_or_equal_to: 0,  message: ": Incident Cost cannot be negative"}
end
