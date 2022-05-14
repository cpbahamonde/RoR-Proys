class ApartmentsController < ApplicationController

    def index
        @building = Building.find params[:building_id]
        @apartments = @building.apartments # Se muestran los apartments asociados a este building
    end

    def new
        @apartment = Apartment.new
        @buildings = Building.all
    end

    def show
        @apartment = Apartment.find(params[:id])
    end

    def create
        @building = Building.find params[:building_id]
        @apartment = Apartment.new(apartment_params)#Strong parameters,
        previene ataques de mass assignment
        @apartment.building = @building #Asignamos el building, ya no es
        necesario pasarlo en el formulario, ahora viene en la url
        respond_to do |format|
        if @apartment.save
        format.html { redirect_to building_apartment_path(@building,
        @apartment), notice: 'Apartment was successfully created.' }
        else
        format.html { render :new }
        end
        end
    end

    private
    def apartment_params
        params.require(:apartment).permit(:number, :building_id)
    end

end
