class Business < ActiveRecord::Base
  has_many :offers
  has_many :locations

#  validation_group :step1, :fields => [:first_name, :last_name]
#  validation_group :step2, :fields => [:age, :gender]
end
