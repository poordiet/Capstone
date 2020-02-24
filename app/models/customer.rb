class Customer < ApplicationRecord
  belongs_to :state
  has_many :pets
end
