require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { address: @place.address, districts_id: @place.districts_id, extra_features_string: @place.extra_features_string, flag: @place.flag, name: @place.name, vehicle_type_big_price: @place.vehicle_type_big_price, vehicle_type_id: @place.vehicle_type_id, vehicle_type_medium_price: @place.vehicle_type_medium_price, vehicle_type_small_price: @place.vehicle_type_small_price }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { address: @place.address, districts_id: @place.districts_id, extra_features_string: @place.extra_features_string, flag: @place.flag, name: @place.name, vehicle_type_big_price: @place.vehicle_type_big_price, vehicle_type_id: @place.vehicle_type_id, vehicle_type_medium_price: @place.vehicle_type_medium_price, vehicle_type_small_price: @place.vehicle_type_small_price }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end
