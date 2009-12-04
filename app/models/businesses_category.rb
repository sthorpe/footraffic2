class BusinessesCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :business
end