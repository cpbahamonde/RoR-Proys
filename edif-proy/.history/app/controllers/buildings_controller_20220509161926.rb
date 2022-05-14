class BuildingsController < ApplicationController
  def index
  end

  def create
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
    params.require(:building).permit(:name, apartments_attributes:[:id,:number, :sale_price, :_destroy])
  end



end
