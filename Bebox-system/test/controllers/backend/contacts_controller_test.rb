require 'test_helper'

class Backend::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get backend_contacts_show_url
    assert_response :success
  end

end
