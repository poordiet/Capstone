class GroomingService < ApplicationRecord
  belongs_to :service
  belongs_to :grooming_appointment
  belongs_to :employee,  optional: true


   # Form Validations
   validates :service_id, presence: true
   validates :service_amount, numericality: {greater_than_or_equal_to: 0, message: ": Service Amount cannot be negative"}

   # Dynamically calculate Appt Total from Grooming Service Amounts
  
  after_save :calculate_total
  after_update :calculate_total
  after_destroy :calculate_total

  def calculate_total
    @service_amount_total = 0

    self.grooming_appointment.grooming_services.each do |grooming_service|

        @service_amount_total =  @service_amount_total + grooming_service.service_amount

    end

    self.grooming_appointment.appt_total = @service_amount_total
    self.grooming_appointment.save
  end
end
