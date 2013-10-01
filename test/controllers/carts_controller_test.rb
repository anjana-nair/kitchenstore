require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  test "should get add_to_cart" do
    get :add_to_cart
    assert_response :success
  end

end
