require "test_helper"

class GolfersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golfers_index_url
    assert_response :success
  end

  test "should get new" do
    get golfers_new_url
    assert_response :success
  end
end
