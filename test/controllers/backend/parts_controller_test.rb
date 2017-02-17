require 'test_helper'

class Backend::PartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backend_parts_index_url
    assert_response :success
  end

  test "should get show" do
    get backend_parts_show_url
    assert_response :success
  end

  test "should get edit" do
    get backend_parts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get backend_parts_destroy_url
    assert_response :success
  end

  test "should get new" do
    get backend_parts_new_url
    assert_response :success
  end

end
