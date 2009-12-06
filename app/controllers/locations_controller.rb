class LocationsController < ApplicationController
  def index
    @locations = Location.verified.all
  end

  def show
    @location = Location.find(params[:id])
  end
end
