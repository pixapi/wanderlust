class ContinentsController < ApplicationController
  def show
    @continent = Continent.find(params[:id])
    @places = Place.where(:continent_id => @continent.id)
  end
end
