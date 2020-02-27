class AddNameToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :pet_name, :string
  end
end
