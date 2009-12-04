class LocationHours < ActiveRecord::Base
  belongs_to :location
  validates_numericality_of :weekday, :only_integer => true, :less_than => 7, :greater_than_or_equal_to => 0
  validates_presence_of :location
  validates_presence_of :start
  validates_presence_of :close
end
