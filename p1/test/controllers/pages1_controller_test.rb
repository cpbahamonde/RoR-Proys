require "test_helper"

class Pages1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages1_index_url
    assert_response :success
  end

  test "should get about" do
    get pages1_about_url
    assert_response :success
  end
end
