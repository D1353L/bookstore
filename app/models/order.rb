class Order < ActiveRecord::Base
  belongs_to :state
  has_many :order_items
end
