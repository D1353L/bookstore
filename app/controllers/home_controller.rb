class HomeController < ApplicationController

  def index
    @books = Book.all
    @order_item = OrderItem.new
  end
end
