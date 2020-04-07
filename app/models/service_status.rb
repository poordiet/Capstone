class ServiceStatus < ApplicationRecord
    has_many :services

    validates :service_status, presence: true
end
