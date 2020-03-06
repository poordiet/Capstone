class Service < ApplicationRecord
  belongs_to :service_status
  has_many :grooming_services
end
