class EmployeeStatus < ApplicationRecord
    has_many :employees

    validates :status, presence: true

    validate :no_repeats, :on => :create

    def no_repeats
        EmployeeStatus.all.each do |status|
            if self.status.upcase == status.status.upcase
                errors.add(:status, "already exists")
            end
        end
    end
end
