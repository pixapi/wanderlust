class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @places = Place.where(:category_id => @category.id)
  end
end
