class AddIndexForOrderCustomer < ActiveRecord::Migration[5.2]
  def change
    add_index :orders, [:customer_id], name: :idx_order_customer_id
  end
end
