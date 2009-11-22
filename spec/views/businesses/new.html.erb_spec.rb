require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/businesses/new.html.erb" do
  include BusinessesHelper

  before(:each) do
    assigns[:business] = stub_model(Business,
      :new_record? => true,
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

  it "renders new business form" do
    render

    response.should have_tag("form[action=?][method=post]", businesses_path) do
      with_tag("input#business_organization_name[name=?]", "business[organization_name]")
      with_tag("input#business_key_contact[name=?]", "business[key_contact]")
      with_tag("input#business_email_address[name=?]", "business[email_address]")
      with_tag("input#business_office_telephone[name=?]", "business[office_telephone]")
      with_tag("input#business_mobile_telephone[name=?]", "business[mobile_telephone]")
      with_tag("input#business_address_line1[name=?]", "business[address_line1]")
      with_tag("input#business_address_line2[name=?]", "business[address_line2]")
      with_tag("input#business_address_city[name=?]", "business[address_city]")
      with_tag("input#business_address_state[name=?]", "business[address_state]")
      with_tag("input#business_address_zipcode[name=?]", "business[address_zipcode]")
      with_tag("textarea#business_comment[name=?]", "business[comment]")
    end
  end
end
