require 'test_helper'

class CrewControllerTest < ActionController::TestCase
  test "should get ourParking" do
    get :ourParking
    assert_response :success
  end

end
