require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Business do
  before(:each) do
    @valid_attributes = {
      :organization_name => "value for organization_name",
      :key_contact => "value for key_contact",
      :email_address => "value for email_address",
      :office_telephone => "value for office_telephone",
      :mobile_telephone => "value for mobile_telephone",
      :address_line1 => "value for address_line1",
      :address_line2 => "value for address_line2",
      :address_city => "value for address_city",
      :address_state => "value for address_state",
      :address_zipcode => "value for address_zipcode",
      :state_date => Date.today,
      :comment => "value for comment"
    }
  end

  it "should create a new instance given valid attributes" do
    Business.create!(@valid_attributes)
  end
end
