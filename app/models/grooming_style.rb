class GroomingStyle < ApplicationRecord
  belongs_to :style
  belongs_to :grooming_appointment
end
