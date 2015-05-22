require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get generate" do
    get :generate
    assert_response :success
  end

  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get coupon" do
    get :coupon
    assert_response :success
  end

end
