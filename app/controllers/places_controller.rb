class PlacesController < ApplicationController
  def index
    @places = Place.all
    @user = current_user
    @continents = Continent.all
    @categories = Category.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = "Thanks for your recommendation of a great place"
      redirect_to places_path
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
