require "test_helper"

class ProysControllerTest < ActionDispatch::IntegrationTest
  test "should get _nav-bar" do
    get proys__nav-bar_url
    assert_response :success
  end

  test "should get crear" do
    get proys_crear_url
    assert_response :success
  end

  test "should get create" do
    get proys_create_url
    assert_response :success
  end

  test "should get hist" do
    get proys_hist_url
    assert_response :success
  end

  test "should get index" do
    get proys_index_url
    assert_response :success
  end
end
