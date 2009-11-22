class FoursquareController < ApplicationController
  
  def index
    @foursquare = Foursquare.new
    @request_token = OAuth::RequestToken.new(@consumer, session[:oauth_request].token, session[:oauth_request].secret)
    @access_token = @request_token.get_access_token
  end
end