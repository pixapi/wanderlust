class PlacesController < ApplicationController
  def index
    @places = Place.all
    # @continent = Continent.find(params[:id]) #so I can call in view continent.name
    # @category = Category.find(params[:id]) #so I can call in view category.name
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to place_path(@path)
    else
      render :new
    end
  end

  def show
    @place = Place.find(params[:id])
  end

  private

  def place_params
    params.require(:place).permit(:name, :country, :experience, :image_path, :category_id, :continent_id)
  end

end
