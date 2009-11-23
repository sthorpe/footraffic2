class FoursquareController < ApplicationController
  
  def show
    @foursquare = Foursquare.new
    @request_token = OAuth::RequestToken.new(@foursquare.consumer, session[:oauth_request_token], session[:oauth_request_secret])
    @access_token = @request_token.get_access_token
    @where_been = @foursquare.where_been
    @access = OAuth::AccessToken.new(@where_been,@access_token.token, @access_token.secret)
    @offers = Offer.all
  end
end