class GroomingAppointmentStatus < ApplicationRecord
    has_many :grooming_appointments

    validates :status, presence: true

    validate :no_repeats, :on => :create

    def no_repeats
        GroomingAppointmentStatus.all.each do |status|
            if self.status.upcase == status.status.upcase
                errors.add(:status, "already exists")
            end
        end
    end
end
