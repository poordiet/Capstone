class GroomingService < ApplicationRecord
  belongs_to :service
  belongs_to :grooming_appointment
  belongs_to :employee,  optional: true


   # Form Validations
   validates :service_id, presence: true
   validates :service_amount, numericality: {greater_than_or_equal_to: 0,:allow_nil => true, message: ": Service Amount cannot be negative"}
end
