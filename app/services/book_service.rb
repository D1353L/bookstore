class BookService
  def img_urls
    Book.pluck('image')
  end
end