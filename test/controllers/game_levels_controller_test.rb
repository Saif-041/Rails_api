require "test_helper"

class GameLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_level = game_levels(:one)
  end

  test "should get index" do
    get game_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_game_level_url
    assert_response :success
  end

  test "should create game_level" do
    assert_difference("GameLevel.count") do
      post game_levels_url, params: { game_level: { balance: @game_level.balance, id: @game_level.id, isAdmin: @game_level.isAdmin, level_no: @game_level.level_no, user: @game_level.user } }
    end

    assert_redirected_to game_level_url(GameLevel.last)
  end

  test "should show game_level" do
    get game_level_url(@game_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_level_url(@game_level)
    assert_response :success
  end

  test "should update game_level" do
    patch game_level_url(@game_level), params: { game_level: { balance: @game_level.balance, id: @game_level.id, isAdmin: @game_level.isAdmin, level_no: @game_level.level_no, user: @game_level.user } }
    assert_redirected_to game_level_url(@game_level)
  end

  test "should destroy game_level" do
    assert_difference("GameLevel.count", -1) do
      delete game_level_url(@game_level)
    end

    assert_redirected_to game_levels_url
  end
end
