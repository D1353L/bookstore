class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_many :reviews, dependent: :delete_all
  belongs_to :category
  belongs_to :order
end
