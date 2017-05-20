# TODO: VALIDATE
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :address
  belongs_to :service

  scope :processed, -> { where('orders.status IS "processed"')}
  scope :placed, -> { where('orders.status IS "order-placed"')}
  scope :cancelled, -> { where('orders.status IS "cancelled"')}

  before_save :calulate_prices

  private
    def calulate_prices
      @service = Service.find(self[:service_id])
      self[:subtotal] = self[:unit_price] * self[:quantity]
      self[:total] = self[:subtotal] + self[:tax] + @service.price
    end
end
