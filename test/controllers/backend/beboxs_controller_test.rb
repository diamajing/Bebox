require 'test_helper'

class Backend::BeboxsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backend_beboxs_index_url
    assert_response :success
  end

  test "should get show" do
    get backend_beboxs_show_url
    assert_response :success
  end

  test "should get edit" do
    get backend_beboxs_edit_url
    assert_response :success
  end

  test "should get new" do
    get backend_beboxs_new_url
    assert_response :success
  end

end
