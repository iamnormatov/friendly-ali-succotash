require "test_helper"

class ZadachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zadach = zadaches(:one)
  end

  test "should get index" do
    get zadaches_url
    assert_response :success
  end

  test "should get new" do
    get new_zadach_url
    assert_response :success
  end

  test "should create zadach" do
    assert_difference("Zadach.count") do
      post zadaches_url, params: { zadach: { project_id: @zadach.project_id, title: @zadach.title } }
    end

    assert_redirected_to zadach_url(Zadach.last)
  end

  test "should show zadach" do
    get zadach_url(@zadach)
    assert_response :success
  end

  test "should get edit" do
    get edit_zadach_url(@zadach)
    assert_response :success
  end

  test "should update zadach" do
    patch zadach_url(@zadach), params: { zadach: { project_id: @zadach.project_id, title: @zadach.title } }
    assert_redirected_to zadach_url(@zadach)
  end

  test "should destroy zadach" do
    assert_difference("Zadach.count", -1) do
      delete zadach_url(@zadach)
    end

    assert_redirected_to zadaches_url
  end
end
