require 'test_helper'

class TeamMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get join" do
    get team_members_join_url
    assert_response :success
  end

end
