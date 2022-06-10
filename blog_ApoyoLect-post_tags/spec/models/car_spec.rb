require 'rails_helper'

RSpec.describe Car, type: :model do
  it "is not valid without an author" do
    car = Car.create(make: "Samsung", model: "SM3", year: "2014", kilometers: "1400", max_trunk_space: "10000", current_trunk_usage "95", current_wheel_usage: "3000", max_wheel_usage_before_change: "10000" )
    expect(car).to_not be_valid
  end
end
