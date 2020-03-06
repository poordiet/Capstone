class State < ApplicationRecord
    has_many :customers
    has_many :employees

    
end
