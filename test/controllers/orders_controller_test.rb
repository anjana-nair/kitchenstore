require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get stock" do
    get :stock
    assert_response :success
  end

end
