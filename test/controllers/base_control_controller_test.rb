require 'test_helper'

class BaseControlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get base_control_index_url
    assert_response :success
  end

end
