class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.string :vaccine_name
      t.string :vaccine_description
      t.string :vaccine_required, limit: 1

      t.timestamps
    end
  end
end
