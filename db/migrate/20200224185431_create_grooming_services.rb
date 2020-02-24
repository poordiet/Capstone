class CreateGroomingServices < ActiveRecord::Migration[6.0]
  def change
    create_table :grooming_services do |t|
      t.references :service, null: false, foreign_key: true
      t.references :grooming_appointment, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.decimal :service_amount
      t.string :service_amount_notes

      t.timestamps
    end
  end
end
