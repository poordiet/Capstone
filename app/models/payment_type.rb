class PaymentType < ApplicationRecord
    has_many :grooming_appointments 

    validates :payment_type, presence: true
end
