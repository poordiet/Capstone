class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :pet_name
      t.string :pet_gender, limit: 1
      t.date :pet_birthdate
      t.string :pet_allergies
      t.string :spayed_neutered, limit: 1
      t.string :pet_treat, limit: 1
      t.string :vet_name
      t.string :vet_phone
      t.string :pet_medical_issues
      t.string :pet_notes
      t.string :pet_color
      t.string :pet_breed
      t.decimal :pet_weight


      t.timestamps
    end
  end
end
