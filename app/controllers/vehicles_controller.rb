class VehiclesController < ApplicationController
  
  before_filter :authenticate_admin!, :only => [:edit, :new, :create, :update, :destroy, :admin]
  
  def admin
    @current_tab = "Vehicles"
    @vehicles = Vehicle.all
  end
  
  def index
    @current_tab = "Vehicles"
    @vehicles = Vehicle.all
    @phone = "(858) 333-2345"
  end

  def show
    @current_tab = "Vehicles"
    @vehicle = Vehicle.find(params[:id])
  end
  
  def special
    @current_tab = "Special"
    @vehicle = Vehicle.where(:special => true).last
  end

  def new
    @vehicle = Vehicle.new
  end


  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.new(params[:vehicle])

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to(@vehicle, :notice => 'Vehicle was successfully created.') }
        format.xml  { render :xml => @vehicle, :status => :created, :location => @vehicle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    respond_to do |format|
      if @vehicle.update_attributes(params[:vehicle])
        format.html { redirect_to(@vehicle, :notice => 'Vehicle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

    respond_to do |format|
      format.html { redirect_to(vehicles_url) }
      format.xml  { head :ok }
    end
  end
end
