class BuildingsController < ApplicationController

  def index
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save 
      redirect_to building_path(@building)
    else 
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def new
    @building = Building.new
    @building.apartments.build
  end


  def building_params
    # El parametró destroy nos permite eliminar un apartment cuando se envía el formulario.
    params.require(:building).permit(:name, apartments_attributes:[:id, :_destroy])
  end



end
