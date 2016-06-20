class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_many :reviews, dependent: :delete_all
  has_many :categories
  belongs_to :order
end
