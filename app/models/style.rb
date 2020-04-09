class Style < ApplicationRecord
    has_many :grooming_styles
    has_many :grooming_appointments, through: :grooming_styles

    validates :style_name, presence: true

    validate :no_repeats, :on => :create

    def no_repeats
        Style.all.each do |style|
            if self.style_name.upcase == style.style_name.upcase
                errors.add(:style_name, "already exists")
            end
        end
    end
end
