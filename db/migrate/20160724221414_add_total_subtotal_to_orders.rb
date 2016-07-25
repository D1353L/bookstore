class AddTotalSubtotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_price, :decimal, :precision => 12, :scale => 2
    add_column :orders, :subtotal_price, :decimal, :precision => 12, :scale => 2
  end
end
