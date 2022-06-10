require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  describe "GET index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @cars" do

      car = Car.create(make: 'Toyota', model: 'Yaris', year: 2019, kilometers: 1000, max_wheel_usage_before_change: 12000, max_trunk_space: 100)

      get :index
      expect(assigns(:cars)).to eq([car])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
