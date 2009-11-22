require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/offers/edit.html.erb" do
  include OffersHelper

  before(:each) do
    assigns[:offer] = @offer = stub_model(Offer,
      :new_record? => false,
      :organization_id => 1,
      :item => "value for item",
      :offer_terms => "value for offer_terms",
      :percent_off => 9.99,
      :free_y_n => false
    )
  end

  it "renders the edit offer form" do
    render

    response.should have_tag("form[action=#{offer_path(@offer)}][method=post]") do
      with_tag('input#offer_organization_id[name=?]', "offer[organization_id]")
      with_tag('input#offer_item[name=?]', "offer[item]")
      with_tag('input#offer_offer_terms[name=?]', "offer[offer_terms]")
      with_tag('input#offer_percent_off[name=?]', "offer[percent_off]")
      with_tag('input#offer_free_y_n[name=?]', "offer[free_y_n]")
    end
  end
end
