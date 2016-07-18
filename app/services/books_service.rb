class BooksService

  def authors_full_names(book_id)
    authors_full_names = []
    Book.find_by_id(book_id).authors.each do |author|
      authors_full_names << author.last_name + ' ' + author.first_name
    end
    authors_full_names
  end
end