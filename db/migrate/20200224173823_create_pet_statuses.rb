class CreatePetStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_statuses do |t|
      t.string :status
      t.string :definition

      t.timestamps
    end
  end
end
