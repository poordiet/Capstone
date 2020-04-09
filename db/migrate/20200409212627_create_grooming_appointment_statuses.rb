class CreateGroomingAppointmentStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :grooming_appointment_statuses do |t|
      t.string :status
      t.string :definition

      t.timestamps
    end
  end
end
