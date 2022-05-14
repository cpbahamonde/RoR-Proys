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


    @building.apartments.build



end
