class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @books = Book.all
  end

  def show
    @categories = Category.all
    @books = Category.find_by_id(params[:id]).books
    render 'categories/index'
  end
end
