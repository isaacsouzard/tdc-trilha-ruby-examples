class CreateShippingCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_companies do |t|
      t.string :name
      t.decimal :delivery_cost

      t.timestamps
    end
  end
end
