require "test_helper"

class ProfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profer = profers(:one)
  end

  test "should get index" do
    get profers_url
    assert_response :success
  end

  test "should get new" do
    get new_profer_url
    assert_response :success
  end

  test "should create profer" do
    assert_difference("Profer.count") do
      post profers_url, params: { profer: { des: @profer.des, project_id: @profer.project_id } }
    end

    assert_redirected_to profer_url(Profer.last)
  end

  test "should show profer" do
    get profer_url(@profer)
    assert_response :success
  end

  test "should get edit" do
    get edit_profer_url(@profer)
    assert_response :success
  end

  test "should update profer" do
    patch profer_url(@profer), params: { profer: { des: @profer.des, project_id: @profer.project_id } }
    assert_redirected_to profer_url(@profer)
  end

  test "should destroy profer" do
    assert_difference("Profer.count", -1) do
      delete profer_url(@profer)
    end

    assert_redirected_to profers_url
  end
end
