class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.references :grooming_appointment, null: false, foreign_key: true
      t.references :incident_status, null: false, foreign_key: true
      t.string :incident_notes
      t.decimal :incident_cost

      t.timestamps
    end
  end
end
