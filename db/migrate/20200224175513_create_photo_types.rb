class CreatePhotoTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_types do |t|
      t.string :photo_type

      t.timestamps
    end
  end
end
