class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.references :state, null: false, foreign_key: true
      t.string :emp_first_name, null: false
      t.string :emp_last_name, null: false
      t.string :emp_primary_phone
      t.string :emp_secondary_phone
      t.string :emp_email
      t.date :emp_hire_date
      t.string :emp_address
      t.string :emp_city
      t.string :emp_zip

      t.timestamps
    end
  end
end
