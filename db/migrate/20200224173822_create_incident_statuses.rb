class CreateIncidentStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :incident_statuses do |t|
      t.string :status
      t.string :definition

      t.timestamps
    end
  end
end
