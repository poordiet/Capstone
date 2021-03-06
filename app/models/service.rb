class Service < ApplicationRecord
  belongs_to :service_status
  has_many :grooming_services
  has_many :grooming_appointments, through: :grooming_services

  validates :service_name, presence: true

  # Get Active Services
  def self.active_services
    Service.find_by_sql("select id, service_name from services where service_status_id = 1")
  end

  validate :no_repeats, :on => :create

    def no_repeats
        Service.all.each do |service|
            if self.service_name.upcase == service.service_name.upcase
                errors.add(:service_name, "already exists")
            end
        end
    end

end
