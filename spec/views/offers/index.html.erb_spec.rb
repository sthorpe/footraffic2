require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/index.html.erb" do
  include OffersHelper

  before(:each) do
    assigns[:offers] = [
      stub_model(Offer,
        :organization_id => 1,
        :item => "value for item",
        :offer_terms => "value for offer_terms",
        :percent_off => 9.99,
        :free_y_n => false
      ),
      stub_model(Offer,
        :organization_id => 1,
        :item => "value for item",
        :offer_terms => "value for offer_terms",
        :percent_off => 9.99,
        :free_y_n => false
      )
    ]
  end

  it "renders a list of offers" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for item".to_s, 2)
    response.should have_tag("tr>td", "value for offer_terms".to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end
