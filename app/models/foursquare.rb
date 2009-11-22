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
  
  def request_token(current_user)
    @consumer = consumer
    @request_token = @consumer.get_request_token
    current_user.foursquare_request_token_key = @request_token.token
    current_user.foursquare_request_token_secret = @request_token.secret
    current_user.save!
    return @request_token
  end
  
  def save_token(oauth_token, current_user)
    @consumer = self.consumer
    @request_token = OAuth::RequestToken.new(@consumer, oauth_token, current_user.foursquare_request_token_secret)
    @access_token = @request_token.get_access_token
    return @access_token
  end
  
end
