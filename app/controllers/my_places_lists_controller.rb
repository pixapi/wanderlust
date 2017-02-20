class MyPlacesListsController < ApplicationController
  def new
    @user = current_user
    @my_places_list = MyPlacesList.new
    @places = Place.all
  end

  def create
    @my_places_list = MyPlacesList.new(my_places_list_params)
    @user = current_user
    if @my_places_list.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  private

  def my_places_list_params
    params.require(:my_places_list).permit(:user_id, :place_id, :visited, :bucket)
  end
end
