require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get show_details" do
    get user_show_details_url
    assert_response :success
  end

end
