class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :short_description
      t.text :full_description
      t.string :image
      t.string :price
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
