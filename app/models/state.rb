class State < ApplicationRecord
    has_many :customers
    has_many :employees
    has_many :stores
end
