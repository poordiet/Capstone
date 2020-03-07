class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.string :style_name
      t.string :style_description

      t.timestamps
    end
  end
end
