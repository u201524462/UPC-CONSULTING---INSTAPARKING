require 'test_helper'

class ParkingControllerTest < ActionController::TestCase
  test "should get ourParking" do
    get :ourParking
    assert_response :success
  end

end
