class GroomingService < ApplicationRecord
  belongs_to :service
  belongs_to :grooming_appointment
  belongs_to :employee,  optional: true


end
