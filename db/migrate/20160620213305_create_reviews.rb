class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :rating
      t.references :book, index: true

      t.timestamps
    end
    add_foreign_key :reviews, :books
  end
end
