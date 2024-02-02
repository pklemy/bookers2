require "test_helper"

class BookersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get bookers_top_url
    assert_response :success
  end

  test "should get show" do
    get bookers_show_url
    assert_response :success
  end

  test "should get index" do
    get bookers_index_url
    assert_response :success
  end

  test "should get edit" do
    get bookers_edit_url
    assert_response :success
  end

  test "should get create" do
    get bookers_create_url
    assert_response :success
  end

  test "should get update" do
    get bookers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bookers_destroy_url
    assert_response :success
  end
end
