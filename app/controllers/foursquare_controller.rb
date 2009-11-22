class FoursquareController < ApplicationController
  
  def index
    @foursquare = Foursquare.new
    @request_token = OAuth::RequestToken.new(@foursquare.consumer, session[:oauth_request_token], session[:oauth_request_secret])
    @access_token = @request_token.get_access_token
  end
end