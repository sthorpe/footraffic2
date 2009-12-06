# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  DAYS = %w(Sun Mon Tue Wed Thu Fri Sat)

  TIME_ZONES = [
    { :label => "(GMT-05:00) Eastern Time - U.S./New York", :value => -5 },
    { :label => "(GMT-06:00) Central Time - U.S./Chicago", :value => -6 },
    { :label => "(GMT-07:00) Mountain Time - U.S./Denver", :value => -7 },
    { :label => "(GMT-08:00) Pacific Time - U.S./San Francisco", :value => -8 } ]

end
