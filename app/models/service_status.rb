class ServiceStatus < ApplicationRecord
    has_many :services

    validates :service_status, presence: true
    validate :no_repeats, :on => :create

    def no_repeats
        ServiceStatus.all.each do |status|
            if self.service_status.upcase == status.service_status.upcase
                errors.add(:service_status, "already exists")
            end
        end
    end
end
