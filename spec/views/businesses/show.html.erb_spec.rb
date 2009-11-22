require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/show.html.erb" do
  include BusinessesHelper
  before(:each) do
    assigns[:business] = @business = stub_model(Business,
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
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ organization_name/)
    response.should have_text(/value\ for\ key_contact/)
    response.should have_text(/value\ for\ email_address/)
    response.should have_text(/value\ for\ office_telephone/)
    response.should have_text(/value\ for\ mobile_telephone/)
    response.should have_text(/value\ for\ address_line1/)
    response.should have_text(/value\ for\ address_line2/)
    response.should have_text(/value\ for\ address_city/)
    response.should have_text(/value\ for\ address_state/)
    response.should have_text(/value\ for\ address_zipcode/)
    response.should have_text(/value\ for\ comment/)
  end
end
