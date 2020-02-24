class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.references :service_status, null: false, foreign_key: true
      t.string :service_name
      t.string :service_description

      t.timestamps
    end
  end
end
