class Service < ApplicationRecord
  has_many :orders, :dependent => :destroy
end
