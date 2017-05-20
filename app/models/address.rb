class Address < ApplicationRecord
  has_many :orders, :dependent => :destroy

  def to_s
    "#{street}, #{city}, #{state}, #{zip}, #{country}"
  end
end
