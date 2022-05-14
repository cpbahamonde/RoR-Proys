class ApartmentsController < ApplicationController

def index
    @apartments = Apartment.all
end

@apartment = Apartment.new
@buildings = Building.all
end

end
