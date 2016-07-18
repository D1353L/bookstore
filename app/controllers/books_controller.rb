class BooksController < ApplicationController

  def show
    @book = Book.find_by_id(params[:id])
    render '_show', book: @book
  end

end
