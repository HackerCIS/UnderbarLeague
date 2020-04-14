require 'test_helper'

class LeaguesControllerTest < ActionDispatch::IntegrationTest
  test "should get new_league" do
    get leagues_new_league_url
    assert_response :success
  end

  test "should get create_league" do
    get leagues_create_league_url
    assert_response :success
  end

  test "should get modify_league" do
    get leagues_modify_league_url
    assert_response :success
  end

  test "should get list_league" do
    get leagues_list_league_url
    assert_response :success
  end

  test "should get show_league" do
    get leagues_show_league_url
    assert_response :success
  end

  test "should get delete_league" do
    get leagues_delete_league_url
    assert_response :success
  end

end
