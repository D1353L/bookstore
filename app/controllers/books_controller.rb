class BooksController < ApplicationController

  def show
    @book = Book.find_by_id(params[:id])
    @order_item = current_order.order_items.new
    @description = 'full_description'
    @max_description_length = 2100
  end

end
