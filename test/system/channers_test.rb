require "application_system_test_case"

class ChannersTest < ApplicationSystemTestCase
  setup do
    @channer = channers(:one)
  end

  test "visiting the index" do
    visit channers_url
    assert_selector "h1", text: "Channers"
  end

  test "should create channer" do
    visit channers_url
    click_on "New channer"

    fill_in "Chan", with: @channer.chan_id
    fill_in "Title", with: @channer.title
    fill_in "User", with: @channer.user_id
    click_on "Create Channer"

    assert_text "Channer was successfully created"
    click_on "Back"
  end

  test "should update Channer" do
    visit channer_url(@channer)
    click_on "Edit this channer", match: :first

    fill_in "Chan", with: @channer.chan_id
    fill_in "Title", with: @channer.title
    fill_in "User", with: @channer.user_id
    click_on "Update Channer"

    assert_text "Channer was successfully updated"
    click_on "Back"
  end

  test "should destroy Channer" do
    visit channer_url(@channer)
    click_on "Destroy this channer", match: :first

    assert_text "Channer was successfully destroyed"
  end
end
