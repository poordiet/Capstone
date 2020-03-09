class Style < ApplicationRecord
    has_many :grooming_styles
    has_many :grooming_appointments, through: :grooming_styles
end
