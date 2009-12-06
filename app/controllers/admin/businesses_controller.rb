class Admin::BusinessesController < ApplicationController
  #before_filter :login_required
  
  def index
    @businesses = Business.all
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

  def verify
    @business = Business.find(params[:id])
    @business.verify
    @business.save
    redirect_to admin_businesses_path
  end

  def suspend
    @business = Business.find(params[:id])
    @business.suspend
    @business.save
    redirect_to admin_businesses_path
  end

  def create
    @business = Business.new(params[:business])

    if @business.save
      redirect_to admin_businesses_path
    else
      render :action => "new"
    end
  end

  def update
    @business = Business.find(params[:id])
    if @business.update_attributes(params[:business])
      flash[:notice] = 'Business was successfully updated.'
      redirect_to admin_business_path(@business)
    else
      render :action => "edit"
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to admin_businesses_path
  end
end
