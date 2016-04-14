class CategoriesController < ApplicationController
  def index
    @categories = Category.all.sort_by { |category| category.pets.size }.reverse
  end

  def show
    @category = Category.find( params[:id] )
  end
end
