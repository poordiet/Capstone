class IncidentStatus < ApplicationRecord
    has_many :incidents

    validates :status, presence: true
end
