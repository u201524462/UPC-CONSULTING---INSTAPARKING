require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get aboutUs" do
    get :aboutUs
    assert_response :success
  end

end
