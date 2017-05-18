class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shipping_address
  belongs_to :shipping_service
end
