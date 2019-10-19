require 'test_helper'

class MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get maps_show_url
    assert_response :success
  end

  test "should get new" do
    get maps_new_url
    assert_response :success
  end

  test "should get create" do
    get maps_create_url
    assert_response :success
  end

  test "should get index" do
    get maps_index_url
    assert_response :success
  end

end
