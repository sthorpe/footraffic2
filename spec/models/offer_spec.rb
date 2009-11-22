require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Offer do
  before(:each) do
    @valid_attributes = {
      :organization_id => 1,
      :item => "value for item",
      :offer_terms => "value for offer_terms",
      :offer_expiration => Date.today,
      :percent_off => 9.99,
      :free_y_n => false
    }
  end

  it "should create a new instance given valid attributes" do
    Offer.create!(@valid_attributes)
  end
end
