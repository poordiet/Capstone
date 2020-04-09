class CreateServiceStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :service_statuses do |t|
      t.string :service_status
      t.string :definition

      t.timestamps
    end
  end
end
