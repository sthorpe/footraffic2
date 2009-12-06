class Address < ActiveRecord::Base

  acts_as_mappable :auto_geocode =>{ :field => :full_address, :error_message => 'Could not geocode address' }

  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip_code
  
  has_many :locations

  def full_address
    out = "#{self.street}"
    out << ", #{self.street_2}"  unless self.street_2.blank?
    out << ", #{self.apt_suite}" unless self.apt_suite.blank?
    out << ", #{self.city}"      unless self.city.blank?
    out << ", #{self.state}"     unless self.state.blank?
    out << " #{self.zip_code}"   unless self.zip_code.blank?
    return out
  end

  def to_s
    full_address
  end
end
