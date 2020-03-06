class CreateGroomingAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :grooming_appointments do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.references :payment_type, null: false, foreign_key: true
      t.date :appt_date
      t.string :appt_blades
      t.decimal :appt_total
      t.string :appt_notes
      t.string :customer_feedback
      t.string :vac_current, limit: 1
      t.date :vac_current_date

      t.timestamps
    end
  end
end
