class BooksController < ApplicationController

  def show
    @book = Book.find_by_id(params[:id])
    @order_item = current_order.order_items.new
  end

end
