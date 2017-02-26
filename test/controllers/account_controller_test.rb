require 'test_helper'

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get account_new_url
    assert_response :success
  end

  test "should get destroy" do
    get account_destroy_url
    assert_response :success
  end

  test "should get dashboard" do
    get account_dashboard_url
    assert_response :success
  end

end
