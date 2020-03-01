class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.references :state, null: false, foreign_key: true
      t.string :store_address
      t.string :store_city
      t.string :store_zip
      t.string :store_phone

      t.timestamps
    end
  end
end
