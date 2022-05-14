class ApartmentsController < ApplicationController

def index
    @apartments = Apartment.all
end

def new
    @apartment = Apartment.new
    @buildings = Building.all
end



end
