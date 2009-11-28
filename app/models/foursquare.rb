require 'oauth'
class Foursquare
  attr_accessor :venues
  
  def initialize
    # @venues = self.find_venues
    # self.venues = []
    # if @venues
    #   @venues.size.times do |num|
    #     venue = Venue.new(@venues[num])
    #     self.venues << venue
    #   end
    # end
  end
  
  def consumer
    @consumer = OAuth::Consumer.new("C3Z0QKGMEWVH3AGUEAZRVAXZ5S51USUFNXZK5E1MVNOMEXAS",
                                    "FQTLC5YZHXYRLDE5OBRE2CQXXK1TZX2JDFWF3BQGCQNYUHC2", {
                                     :site               => "http://foursquare.com",
                                     :scheme             => :header,
                                     :http_method        => :post,
                                     :request_token_path => "/oauth/request_token",
                                     :access_token_path  => "/oauth/access_token",
                                     :authorize_path     => "/oauth/authorize"
                                    })
    return @consumer
  end
  
  def request_token
    @consumer = consumer
    @request_token = @consumer.get_request_token
    return @request_token
  end
  
  def save_token
    @consumer = self.consumer
    @request_token = OAuth::RequestToken.new(@consumer, @oauth_token, @oauth_secret)
    @access_token = @request_token.get_access_token
    return @access_token
  end
  
  def api_access
    @consumer = OAuth::Consumer.new("C3Z0QKGMEWVH3AGUEAZRVAXZ5S51USUFNXZK5E1MVNOMEXAS",
                                    "FQTLC5YZHXYRLDE5OBRE2CQXXK1TZX2JDFWF3BQGCQNYUHC2", {
                                     :site               => "http://api.foursquare.com",
                                     :scheme             => :header,
                                     :http_method        => :post,
                                    })
    return @consumer
  end
  
  def access_token
    @access_token = self.save_token
    @access = OAuth::AccessToken.new(self.api_access,@access_token.token, @access_token.secret)
    return @access
  end
  
  #* geolat - latitude     (required)
  #* geolong - longitude   (required)
  #* l - limit of results  (optional, default 10)
  #* q - keyword search    (optional)
  def find_venues(geolat=nil, geolong=nil, l=nil, q=nil)
    geolat = "40.7204"
    geolong = "-73.9933"
    @venues = self.access_token.get("/v1/venues?geolat=#{geolat}&geolong=#{geolong}").body
    return @venues
  end
  
end
