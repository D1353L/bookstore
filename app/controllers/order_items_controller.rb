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

    redirect_to :back
  end

  def update_all
    @order = current_order
    params[:order_items].keys.each do |id|
      @order_item = @order.order_items.find_by_id(id.to_i)
      @order_item.update_attributes(params[:order_items][id].permit(:quantity))
    end
    @order_items = @order.order_items

    redirect_to :back
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items

    redirect_to :back
  end

  def destroy_all
    current_order.order_items.each(&:destroy)
    redirect_to :back
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :book_id)
  end
end
