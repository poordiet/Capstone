class Incident < ApplicationRecord
  belongs_to :grooming_appointment
  belongs_to :incident_status
end
