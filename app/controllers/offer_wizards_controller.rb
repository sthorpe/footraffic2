class OfferWizardsController < ApplicationController
  before_filter :load_business

  def show #welcome
  end
  
  def step1 # Basic Business info.
    current_offer
    if params[:offer]
      @offer = Offer.new(params[:v])
      session[:offer] = @offer
      if @offer.valid?
        redirect_to step2_offer_wizard_url
      end
    end
  end

  def cancel
    clear_session_vars
    redirect_to offer_wizard_path
  end
  
  def complete
    
  end


  private

  def current_offer
    if session[:offer]
      @offer = session[:offer]
    else
      @offer = Offer.new
      session[:offer] = @offer
    end
    return @offer
  end

  def clear_session_vars
    session[:offer] = nil
  end

  def load_business
    @business = Business.last
  end
end