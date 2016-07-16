class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :rating
      t.references :book, index: true, foreign_key: true

      t.timestamps
    end
  end
end
