class CreatePaymentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_types do |t|
      t.string :payment_type
      t.string :definition

      t.timestamps
    end
  end
end
