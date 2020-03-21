class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.references :state, null: false, foreign_key: true
      t.references :customer_status, null: false, foreign_key: true
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :customer_address
      t.string :customer_city
      t.string :customer_zip
      t.string :customer_primary_phone
      t.string :customer_secondary_phone
      t.string :customer_email
      t.date :date_obtained
      t.string :customer_notes

      t.timestamps
    end
  end
end


