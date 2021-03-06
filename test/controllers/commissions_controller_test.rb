require 'test_helper'

class CommissionsControllerTest < ActionController::TestCase
  setup do
    @commission = commissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commission" do
    assert_difference('Commission.count') do
      post :create, commission: { com_type: @commission.com_type, district_id: @commission.district_id, flag: @commission.flag, vehicle_types_id: @commission.vehicle_types_id }
    end

    assert_redirected_to commission_path(assigns(:commission))
  end

  test "should show commission" do
    get :show, id: @commission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commission
    assert_response :success
  end

  test "should update commission" do
    patch :update, id: @commission, commission: { com_type: @commission.com_type, district_id: @commission.district_id, flag: @commission.flag, vehicle_types_id: @commission.vehicle_types_id }
    assert_redirected_to commission_path(assigns(:commission))
  end

  test "should destroy commission" do
    assert_difference('Commission.count', -1) do
      delete :destroy, id: @commission
    end

    assert_redirected_to commissions_path
  end
end
