class CreateGroomingStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :grooming_styles do |t|
      t.references :style, null: false, foreign_key: true
      t.references :grooming_appointment, null: false, foreign_key: true
      t.string :groom_style_notes

      t.timestamps
    end
  end
end
