class BuildingsController < ApplicationController

  def create
    @building = Building.new(building_params)
    if @building.save 
      redirect_to building_path(@building)
    else 
      render 'new'
    end
  end

  def destroy
    @building = Building.find params[:id]
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url, notice: 'Building was successfully destroyed.' }
    end
  end

  def edit
     @building = Building.find params[:id]
  end

  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
    @building.apartments.new
  end

  def show
    @building = Building.find params[:id]
  end

  def update
    @building = Building.find params[:id]
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to building_path(@building), notice: 'Building was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end





  def building_params
    # El parametró destroy nos permite eliminar un apartment cuando se envía el formulario.
    params.require(:building).permit(:name, apartments_attributes:[:id, :_destroy])
  end

end


