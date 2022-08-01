require "application_system_test_case"

class GameLevelsTest < ApplicationSystemTestCase
  setup do
    @game_level = game_levels(:one)
  end

  test "visiting the index" do
    visit game_levels_url
    assert_selector "h1", text: "Game levels"
  end

  test "should create game level" do
    visit game_levels_url
    click_on "New game level"

    fill_in "Balance", with: @game_level.balance
    fill_in "Id", with: @game_level.id
    check "Isadmin" if @game_level.isAdmin
    fill_in "Level no", with: @game_level.level_no
    fill_in "User", with: @game_level.user
    click_on "Create Game level"

    assert_text "Game level was successfully created"
    click_on "Back"
  end

  test "should update Game level" do
    visit game_level_url(@game_level)
    click_on "Edit this game level", match: :first

    fill_in "Balance", with: @game_level.balance
    fill_in "Id", with: @game_level.id
    check "Isadmin" if @game_level.isAdmin
    fill_in "Level no", with: @game_level.level_no
    fill_in "User", with: @game_level.user
    click_on "Update Game level"

    assert_text "Game level was successfully updated"
    click_on "Back"
  end

  test "should destroy Game level" do
    visit game_level_url(@game_level)
    click_on "Destroy this game level", match: :first

    assert_text "Game level was successfully destroyed"
  end
end
