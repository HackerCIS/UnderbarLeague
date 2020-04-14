require 'test_helper'

class MatchsControllerTest < ActionDispatch::IntegrationTest
  test "should get result_enter" do
    get matchs_result_enter_url
    assert_response :success
  end

end
