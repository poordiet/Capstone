class Service < ApplicationRecord
  belongs_to :service_status
  has_many :grooming_services
  has_many :grooming_appointments, through: :grooming_services
end
