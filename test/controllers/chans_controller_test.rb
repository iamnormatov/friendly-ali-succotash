require "test_helper"

class ChansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chan = chans(:one)
  end

  test "should get index" do
    get chans_url
    assert_response :success
  end

  test "should get new" do
    get new_chan_url
    assert_response :success
  end

  test "should create chan" do
    assert_difference("Chan.count") do
      post chans_url, params: { chan: { project_id: @chan.project_id, title: @chan.title } }
    end

    assert_redirected_to chan_url(Chan.last)
  end

  test "should show chan" do
    get chan_url(@chan)
    assert_response :success
  end

  test "should get edit" do
    get edit_chan_url(@chan)
    assert_response :success
  end

  test "should update chan" do
    patch chan_url(@chan), params: { chan: { project_id: @chan.project_id, title: @chan.title } }
    assert_redirected_to chan_url(@chan)
  end

  test "should destroy chan" do
    assert_difference("Chan.count", -1) do
      delete chan_url(@chan)
    end

    assert_redirected_to chans_url
  end
end
