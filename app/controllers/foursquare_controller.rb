class FoursquareController < ApplicationController
  
  def index
    @access_token = Foursquare.new().save_token
  end
end