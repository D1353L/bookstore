class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.references :book, index: true

      t.timestamps
    end
    add_foreign_key :orders, :books
  end
end
