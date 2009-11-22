class FoursquareController < ApplicationController
  
  def index
    @foursquare = Foursquare.new
    @access_token = @foursquare.save_token
  end
end