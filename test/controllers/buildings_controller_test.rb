require "test_helper"

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get buildings_new_url
    assert_response :success
  end

  test "should get index" do
    get buildings_index_url
    assert_response :success
  end

  test "should get delete" do
    get buildings_delete_url
    assert_response :success
  end
end
