require 'test_helper'

class UserTripsControllerTest < ActionController::TestCase
  setup do
    @user_trip = user_trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_trip" do
    assert_difference('UserTrip.count') do
      post :create, user_trip: { city_id: @user_trip.city_id, user_id: @user_trip.user_id }
    end

    assert_redirected_to user_trip_path(assigns(:user_trip))
  end

  test "should show user_trip" do
    get :show, id: @user_trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_trip
    assert_response :success
  end

  test "should update user_trip" do
    patch :update, id: @user_trip, user_trip: { city_id: @user_trip.city_id, user_id: @user_trip.user_id }
    assert_redirected_to user_trip_path(assigns(:user_trip))
  end

  test "should destroy user_trip" do
    assert_difference('UserTrip.count', -1) do
      delete :destroy, id: @user_trip
    end

    assert_redirected_to user_trips_path
  end
end
