require 'rails_helper'

RSpec.describe Order, :type => :model do
    context "with 2 or more comments" do
      it "orders them in reverse chronologically" do
        orders = Order.all
        expect(orders.count).to eq(2)
      end
    end
end
