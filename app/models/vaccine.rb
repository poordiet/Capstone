class Vaccine < ApplicationRecord
    has_many :pet_vaccinations
    has_many :pets, through: :pet_vaccinations

    validates :vaccine_name, presence: true
    validates :vaccine_required, presence: true

    validate :no_repeats, :on => :create

    def no_repeats
        Vaccine.all.each do |vaccine|
            if self.vaccine_name.upcase == vaccine.vaccine_name.upcase
                errors.add(:vaccine_name, "already exists")
            end
        end
    end
end
