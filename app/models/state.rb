class State < ApplicationRecord
    has_many :customers
    has_many :employees

    validates :state_name, presence: true
    validates :state_abbreviation, presence: true
end
