require 'test_helper'

class CharacterControllerTest < ActionDispatch::IntegrationTest
  test "should get move" do
    get character_move_url
    assert_response :success
  end

end
