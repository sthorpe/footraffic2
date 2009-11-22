require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/show.html.erb" do
  include OffersHelper
  before(:each) do
    assigns[:offer] = @offer = stub_model(Offer,
      :organization_id => 1,
      :item => "value for item",
      :offer_terms => "value for offer_terms",
      :percent_off => 9.99,
      :free_y_n => false
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ item/)
    response.should have_text(/value\ for\ offer_terms/)
    response.should have_text(/9\.99/)
    response.should have_text(/false/)
  end
end
