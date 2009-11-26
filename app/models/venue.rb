# Returns venue data, including mayorship, tips/to-dos and tags.
class Venue
  @@attr_names = ["id", "name", "address", "crossstreet", "city", "state", "zip", "geolat", "geolong", "phone", "twitter"]
  attr_accessor *@@attr_names
  attr_accessor :foursquare
  
  def initialize(object)
    if object
      @@attr_names.each do |attr_name|
        if object.has_key?(attr_name.to_sym)
          self.send "#{attr_name}=", object.fetch(attr_name.to_sym)
        end
      end
    end
  end
  
  # Returns a list of venues near the area specified or that match the search term. (The distance returned is in meters). 
  # If you authenticate, the method will return venue meta-data related to you and your friends. If you do not 
  # authenticate, you will not get this data.
  def nearby_search(address = nil)
  end
  
  # Allows you to add a new venue.
  def add_venue
  end
  
  # Returns a list of tips near the area specified. (The distance returned is in meters).
  def nearby
  end
end