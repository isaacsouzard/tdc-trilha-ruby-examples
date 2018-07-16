class AddOrderItemRefToDelivery < ActiveRecord::Migration[5.2]
  def change
    add_reference :deliveries, :order_item, foreign_key: true
  end
end
