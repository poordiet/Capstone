class EmployeeStatus < ApplicationRecord
    has_many :employees

    validates :status, presence: true
end
