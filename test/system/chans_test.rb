require "application_system_test_case"

class ChansTest < ApplicationSystemTestCase
  setup do
    @chan = chans(:one)
  end

  test "visiting the index" do
    visit chans_url
    assert_selector "h1", text: "Chans"
  end

  test "should create chan" do
    visit chans_url
    click_on "New chan"

    fill_in "Project", with: @chan.project_id
    fill_in "Title", with: @chan.title
    click_on "Create Chan"

    assert_text "Chan was successfully created"
    click_on "Back"
  end

  test "should update Chan" do
    visit chan_url(@chan)
    click_on "Edit this chan", match: :first

    fill_in "Project", with: @chan.project_id
    fill_in "Title", with: @chan.title
    click_on "Update Chan"

    assert_text "Chan was successfully updated"
    click_on "Back"
  end

  test "should destroy Chan" do
    visit chan_url(@chan)
    click_on "Destroy this chan", match: :first

    assert_text "Chan was successfully destroyed"
  end
end
