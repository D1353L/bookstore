class Order < ActiveRecord::Base
  has_many :books
end