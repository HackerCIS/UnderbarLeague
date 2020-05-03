require 'test_helper'

class JoinleaguesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get joinleagues_create_url
    assert_response :success
  end

end
