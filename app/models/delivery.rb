class Delivery < ApplicationRecord
  belongs_to :shipping_company
  belongs_to :ordem_item
end
