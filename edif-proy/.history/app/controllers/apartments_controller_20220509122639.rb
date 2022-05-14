class ApartmentsController < ApplicationController

def index
    @apartments = Apartment.all
end

def index
@apartment = Apartment.new
@buildings = Building.all
end

end
