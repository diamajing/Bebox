require 'test_helper'

class BeboxsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beboxs_index_url
    assert_response :success
  end

  test "should get show" do
    get beboxs_show_url
    assert_response :success
  end

  test "should get edit" do
    get beboxs_edit_url
    assert_response :success
  end

  test "should get new" do
    get beboxs_new_url
    assert_response :success
  end

end
