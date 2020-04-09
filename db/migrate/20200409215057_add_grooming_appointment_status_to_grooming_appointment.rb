class AddGroomingAppointmentStatusToGroomingAppointment < ActiveRecord::Migration[6.0]
  def change
    add_reference :grooming_appointments, :grooming_appointment_status, null: false, foreign_key: true
  end
end
