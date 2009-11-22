require 'oauth'
class Foursquare
  
  def initialize
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
    @consumer = self.consumer
    @request_token = @consumer.get_request_token
    return @request_token
  end
  
  def save_token(oauth_token)
    @consumer = self.consumer
    @request = self.request_token
    @request_token = OAuth::RequestToken.new(@consumer, oauth_token, @request.secret)
    @access_token = @request_token.get_access_token
    return @access_token
  end
  
end
