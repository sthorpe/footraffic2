class FoursquareController < ApplicationController
  
  def index
    @foursquare = Foursquare.new
    @access_token = @foursquare.save_token(params[:oauth_token], current_user)
  end
end