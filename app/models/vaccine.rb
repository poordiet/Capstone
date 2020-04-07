class Vaccine < ApplicationRecord
    has_many :pet_vaccinations
    has_many :pets, through: :pet_vaccinations

    validates :vaccine_name, presence: true
    validates :vaccine_required, presence: true
end
