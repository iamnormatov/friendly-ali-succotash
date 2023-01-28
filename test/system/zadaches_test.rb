require "application_system_test_case"

class ZadachesTest < ApplicationSystemTestCase
  setup do
    @zadach = zadaches(:one)
  end

  test "visiting the index" do
    visit zadaches_url
    assert_selector "h1", text: "Zadaches"
  end

  test "should create zadach" do
    visit zadaches_url
    click_on "New zadach"

    fill_in "Project", with: @zadach.project_id
    fill_in "Title", with: @zadach.title
    click_on "Create Zadach"

    assert_text "Zadach was successfully created"
    click_on "Back"
  end

  test "should update Zadach" do
    visit zadach_url(@zadach)
    click_on "Edit this zadach", match: :first

    fill_in "Project", with: @zadach.project_id
    fill_in "Title", with: @zadach.title
    click_on "Update Zadach"

    assert_text "Zadach was successfully updated"
    click_on "Back"
  end

  test "should destroy Zadach" do
    visit zadach_url(@zadach)
    click_on "Destroy this zadach", match: :first

    assert_text "Zadach was successfully destroyed"
  end
end
