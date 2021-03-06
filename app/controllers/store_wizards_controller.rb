class StoreWizardsController < ApplicationController

  def show #welcome
  end
  
  def step1 # Basic Business info.
    current_business
    if params[:business]
      @business = Business.new(params[:business])
      session[:business] = @business
      if @business.valid?
        redirect_to step2_store_wizard_url
      end
    end
  end
  
  def step2 # Locations
    current_business
    current_location
    if params[:location]
      @location = @business.locations.build(params[:location]) if @business.locations.size == 0
      @address = Address.new(params[:address])
      @location.address = @address
      session[:location] = @location
      if @location.valid? && @address.valid?
        redirect_to step3_store_wizard_url
      end
    end
  end
  
  def step3 # Review
    @business = current_business
  end
  
  def complete # Create
    if current_business.save && current_location.save
      clear_session_vars
    end
  end

  def current_business
    if session[:business]
      @business = session[:business]
    else
      @business = Business.new
      session[:business] = @business
    end
    return @business
  end

  def current_location
    if session[:location]
      @location = session[:location]
      @address  = @location.address
    else
      @location = Location.new
      @location.address = Address.new
      session[:location] = @location
    end
    return @location
  end

  def cancel
    clear_session_vars
    redirect_to store_wizard_path
  end

  def clear_session_vars
    session[:business] = nil
    session[:location] = nil
  end

end