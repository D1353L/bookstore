class CreateAuthorsBooks < ActiveRecord::Migration
  def change
    create_table :authors_books, :id => false do |t|
      t.references :author, index: true
      t.references :book, index: true

      t.timestamps
    end
    add_foreign_key :authors_books, :authors
    add_foreign_key :authors_books, :books
  end
end
