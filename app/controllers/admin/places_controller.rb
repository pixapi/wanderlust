class Admin::PlacesController < Admin::BaseController
  before_action :current_admin?

  def index
    @places = Place.all
  end

  def update
    if params[:approved] === true
      place = Place.find(params[:id])
      place.update(approved: true)
    end
  end

end
