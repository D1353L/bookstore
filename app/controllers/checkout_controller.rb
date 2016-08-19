class CheckoutController < ApplicationController

  def index
    @billing_address = BillingAddress.new
    @shipping_address = ShippingAddress.new
    @order = current_order
  end
end
