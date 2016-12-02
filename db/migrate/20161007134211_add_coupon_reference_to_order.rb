class AddCouponReferenceToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :coupon, foreign_key: true
  end
end
