class PetStatus < ApplicationRecord
has_many :pets

validates :status, presence: true

end
