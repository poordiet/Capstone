class Customer < ApplicationRecord
  belongs_to :state
  has_many :pets
  accepts_nested_attributes_for :pets, reject_if: :all_blank, allow_destroy: true
end
