class Style < ApplicationRecord
    has_many :grooming_styles
    has_many :grooming_appointments, through: :grooming_styles

    validates :style_name, presence: true
end
