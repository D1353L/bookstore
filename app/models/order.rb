class Order < ActiveRecord::Base
  belongs_to :state
  belongs_to :coupon
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal_price
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.price) : 0 }.sum
  end

  def total_price
    !coupon.nil? && coupon.available ? self[:subtotal_price] * coupon.discount : self[:subtotal_price]
  end

  def update_total
    self[:total_price] = total_price
  end

  private
  def set_order_status
    self.state = State.find_by_name('in_progress')
  end

  def update_subtotal
    self[:subtotal_price] = subtotal_price
  end

end
