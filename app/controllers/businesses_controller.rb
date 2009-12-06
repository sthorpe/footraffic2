class BusinessesController < ApplicationController
  #before_filter :login_required
  
  def index
    @businesses = Business.verified.all
  end

  def show
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def edit
    @business = Business.find(params[:id])
  end

  def create
    @business = Business.new(params[:business])

    if @business.save
      redirect_to step2_store_wizard_url
    else
      render :template => "store_wizards/step1"
    end
  end

  def update
    @business = Business.find(params[:id])
    if @business.update_attributes(params[:business])
      flash[:notice] = 'Business was successfully updated.'
      redirect_to(@business)
    else
      render :action => "edit"
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy

    redirect_to(businesses_url)
  end
end
