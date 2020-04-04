class Service < ApplicationRecord
  belongs_to :service_status
  has_many :grooming_services
  has_many :grooming_appointments, through: :grooming_services

  def self.active_services
    Service.find_by_sql("select id, service_name from services where service_status_id = 1")
  end
end
