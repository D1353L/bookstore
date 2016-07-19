class AddPriceQuantityToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :price, :decimal
    add_column :order_items, :quantity, :integer
  end
end
