class Admin::LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
    @location.address = Address.new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def verify
    @location = Location.find(params[:id])
    @location.verify
    @location.save
    redirect_to admin_locations_path
  end

  def suspend
    @location = Location.find(params[:id])
    @location.suspend
    @location.save
    redirect_to admin_locations_path
  end

  def create
    if params[:location]
      address = Address.create(params[:location][:address])
      params[:location][:address] = nil
    end
    @location = Location.new(params[:location])

    if @location.save
      flash[:notice] = 'Location was successfully created.'
      redirect_to admin_location_path(@location)
    else
      render :action => "new"
    end
  end

  def update
    @location = Location.find(params[:id])

    if @location.update_attributes(params[:location])
      flash[:notice] = 'Location was successfully updated.'
      redirect_to admin_location_path(@location)
    else
      render :action => "edit"
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to(admin_locations_url)
  end
end
