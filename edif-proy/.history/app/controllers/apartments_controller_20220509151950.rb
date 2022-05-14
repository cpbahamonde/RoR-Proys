class ApartmentsController < ApplicationController

    def edit
        @building = Building.find params[:building_id]
        @apartment = Apartment.find params[:id]
    end

    def destroy
        @apartment = Apartment.find params[:id]
        @apartment.destroy
        respond_to do |format|
            format.html { redirect_to building_apartments_url, notice: 'Apartment was successfully destroyed.' }
        end
    end

    def index
        @building = Building.find params[:building_id]
        @apartments = @building.apartments # Se muestran los apartments asociados a este building
    end

    def new
        @building = Building.find params[:building_id]
        @apartment = Apartment.new
    end

    def show
        @building = Building.find params[:building_id]
        @apartment = Apartment.find(params[:id])
    end

    def update
        @building = Building.find params[:building_id]
        @apartment = Apartment.find params[:id]
        respond_to do |format|
            if @apartment.update(apartment_params.merge(building: @building)) # Se añade el building que se obtuvo en la llamada a find_building
                format.html { redirect_to building_apartment_path(@building,@apartment), notice: 'Apartment was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end

    private
    def apartment_params
        params.require(:apartment).permit(:number)
    end

end
