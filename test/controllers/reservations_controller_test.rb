require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { districts_id: @reservation.districts_id, end_date: @reservation.end_date, end_time: @reservation.end_time, flag: @reservation.flag, places_id: @reservation.places_id, price: @reservation.price, start_date: @reservation.start_date, start_time: @reservation.start_time, vehicle_type_id: @reservation.vehicle_type_id }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { districts_id: @reservation.districts_id, end_date: @reservation.end_date, end_time: @reservation.end_time, flag: @reservation.flag, places_id: @reservation.places_id, price: @reservation.price, start_date: @reservation.start_date, start_time: @reservation.start_time, vehicle_type_id: @reservation.vehicle_type_id }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
