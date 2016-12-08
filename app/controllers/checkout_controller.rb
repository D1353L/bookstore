class CheckoutController < ApplicationController
include Wicked::Wizard

  steps :address, :delivery

  def show
    case step
    when :address
      @billing_address = BillingAddress.new
      @shipping_address = ShippingAddress.new
    end
    @order = current_order
    @order.update_total
    render_wizard
  end
end
