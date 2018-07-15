class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.references :shipping_company, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
