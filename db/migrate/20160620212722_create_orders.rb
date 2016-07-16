class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :state, index: true, foreign_key: true

      t.timestamps
    end
  end
end
