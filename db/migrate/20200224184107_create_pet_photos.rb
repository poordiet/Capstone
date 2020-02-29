class CreatePetPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_photos do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :photo_type, null: false, foreign_key: true
      t.references :grooming_appointment, null: true, foreign_key: true
      t.text :photo_link
      t.string :photo_description

      t.timestamps
    end
  end
end
