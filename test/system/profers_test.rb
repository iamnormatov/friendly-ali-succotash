require "application_system_test_case"

class ProfersTest < ApplicationSystemTestCase
  setup do
    @profer = profers(:one)
  end

  test "visiting the index" do
    visit profers_url
    assert_selector "h1", text: "Profers"
  end

  test "should create profer" do
    visit profers_url
    click_on "New profer"

    fill_in "Des", with: @profer.des
    fill_in "Project", with: @profer.project_id
    click_on "Create Profer"

    assert_text "Profer was successfully created"
    click_on "Back"
  end

  test "should update Profer" do
    visit profer_url(@profer)
    click_on "Edit this profer", match: :first

    fill_in "Des", with: @profer.des
    fill_in "Project", with: @profer.project_id
    click_on "Update Profer"

    assert_text "Profer was successfully updated"
    click_on "Back"
  end

  test "should destroy Profer" do
    visit profer_url(@profer)
    click_on "Destroy this profer", match: :first

    assert_text "Profer was successfully destroyed"
  end
end
