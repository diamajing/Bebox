require 'test_helper'

class Backend::MaintenancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get backend_maintenances_new_url
    assert_response :success
  end

  test "should get edit" do
    get backend_maintenances_edit_url
    assert_response :success
  end

  test "should get show" do
    get backend_maintenances_show_url
    assert_response :success
  end

  test "should get destroy" do
    get backend_maintenances_destroy_url
    assert_response :success
  end

end
