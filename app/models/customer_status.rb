class CustomerStatus < ApplicationRecord
    has_many :customers

    validates :status, presence: true
end
