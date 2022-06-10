require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  describe "GET index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @cars" do
      car = Car.create(make: "Samsung", model: "SM3", year: "2014", kilometers: "1400", max_trunk_space: "10000", current_trunk_usage "95", current_wheel_usage: "3000", max_wheel_usage_before_change: "10000" )

      get :index
      expect(assigns(:cars)).to eq([car])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
