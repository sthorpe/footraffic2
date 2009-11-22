require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/index.html.erb" do
  include BusinessesHelper

  before(:each) do
    assigns[:businesses] = [
      stub_model(Business,
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
        :comment => "value for comment"
      ),
      stub_model(Business,
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
        :comment => "value for comment"
      )
    ]
  end

  it "renders a list of businesses" do
    render
    response.should have_tag("tr>td", "value for organization_name".to_s, 2)
    response.should have_tag("tr>td", "value for key_contact".to_s, 2)
    response.should have_tag("tr>td", "value for email_address".to_s, 2)
    response.should have_tag("tr>td", "value for office_telephone".to_s, 2)
    response.should have_tag("tr>td", "value for mobile_telephone".to_s, 2)
    response.should have_tag("tr>td", "value for address_line1".to_s, 2)
    response.should have_tag("tr>td", "value for address_line2".to_s, 2)
    response.should have_tag("tr>td", "value for address_city".to_s, 2)
    response.should have_tag("tr>td", "value for address_state".to_s, 2)
    response.should have_tag("tr>td", "value for address_zipcode".to_s, 2)
    response.should have_tag("tr>td", "value for comment".to_s, 2)
  end
end
