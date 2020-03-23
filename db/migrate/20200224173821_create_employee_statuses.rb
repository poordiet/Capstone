class CreateEmployeeStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_statuses do |t|
      t.string :status
      t.string :definition

      t.timestamps
    end
  end
end
