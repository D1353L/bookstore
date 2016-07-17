class ChangeColumnTypeBooksPrice < ActiveRecord::Migration
  def change
    remove_column :books, :price
    add_column :books, :price, :decimal
  end
end
