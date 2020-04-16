require 'test_helper'

class BoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get standings" do
    get boards_standings_url
    assert_response :success
  end

  test "should get score" do
    get boards_score_url
    assert_response :success
  end

  test "should get player" do
    get boards_player_url
    assert_response :success
  end

  test "should get schedule" do
    get boards_schedule_url
    assert_response :success
  end

end
