class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @book = Book.find_by_id(params[:order_item][:book_id])
    @order_item = @order.order_items.find_by_book_id(@book.id)
    if @order_item
      @order_item.update_attributes(quantity: @order_item.quantity + params[:order_item][:quantity].to_i)
    else
      @order_item = @order.order_items.new(quantity: params[:order_item][:quantity], book_id: @book.id, price: @book.price)
    end
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  def destroy_all
    current_order.order_items.each(&:destroy)
    redirect_to cart_path
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :book_id)
  end
end
