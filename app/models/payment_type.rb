class PaymentType < ApplicationRecord
    has_many :grooming_appointments 

    validates :payment_type, presence: true

    validate :no_repeats, :on => :create

    def no_repeats
        PaymentType.all.each do |pt|
            if self.payment_type.upcase == pt.payment_type.upcase
                errors.add(:payment_type, "already exists")
            end
        end
    end
end
