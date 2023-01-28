require "test_helper"

class ChannersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @channer = channers(:one)
  end

  test "should get index" do
    get channers_url
    assert_response :success
  end

  test "should get new" do
    get new_channer_url
    assert_response :success
  end

  test "should create channer" do
    assert_difference("Channer.count") do
      post channers_url, params: { channer: { chan_id: @channer.chan_id, title: @channer.title, user_id: @channer.user_id } }
    end

    assert_redirected_to channer_url(Channer.last)
  end

  test "should show channer" do
    get channer_url(@channer)
    assert_response :success
  end

  test "should get edit" do
    get edit_channer_url(@channer)
    assert_response :success
  end

  test "should update channer" do
    patch channer_url(@channer), params: { channer: { chan_id: @channer.chan_id, title: @channer.title, user_id: @channer.user_id } }
    assert_redirected_to channer_url(@channer)
  end

  test "should destroy channer" do
    assert_difference("Channer.count", -1) do
      delete channer_url(@channer)
    end

    assert_redirected_to channers_url
  end
end
