require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_team" do
    get teams_new_team_url
    assert_response :success
  end

  test "should get create_team" do
    get teams_create_team_url
    assert_response :success
  end

  test "should get modify_team" do
    get teams_modify_team_url
    assert_response :success
  end

end
