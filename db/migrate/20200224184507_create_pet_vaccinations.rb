class CreatePetVaccinations < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_vaccinations do |t|
      t.references :vaccine, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.date :date_given
      t.date :date_expire

      t.timestamps
    end
  end
end
