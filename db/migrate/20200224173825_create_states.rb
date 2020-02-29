class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :state_name, null: false
      t.string :state_abbreviation, limit: 2, null: false

      t.timestamps
    end
  end
end
