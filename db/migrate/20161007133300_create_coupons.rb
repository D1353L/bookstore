class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :name, null: false, index: true
      t.decimal :discount, null: false
      t.boolean :available, null: false

      t.timestamps null: false
    end
  end
end
