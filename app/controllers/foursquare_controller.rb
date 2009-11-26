class FoursquareController < ApplicationController
  
  def show
    @foursquare = Foursquare.new(session[:oauth_request_token],session[:oauth_request_secret])
    @access = @foursquare.access_token
    
    # Commenting this out because it is a bit useless now.
    # @offers = Offer.all
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end