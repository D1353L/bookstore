class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :book
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :book_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:price]
    else
      book.price
    end
  end

  def total_price
    unit_price * quantity
  end

  private
  def book_present
    if book.nil?
      errors.add(:book, 'is not valid or is not active.')
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, 'is not a valid order.')
    end
  end

  def finalize
    self[:price] = unit_price
  end
end
