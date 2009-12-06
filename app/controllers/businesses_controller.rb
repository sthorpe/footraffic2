class BusinessesController < ApplicationController
  #before_filter :login_required
  
  def index
    @businesses = Business.verified.all
  end

  def show
    @business = Business.find(params[:id])
  end
end
