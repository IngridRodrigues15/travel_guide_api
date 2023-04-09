require 'test_helper'

class UserPlacesControllerTest < ActionController::TestCase
  setup do
    @user_place = user_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_place" do
    assert_difference('UserPlace.count') do
      post :create, user_place: { already_being_there: @user_place.already_being_there, place_id: @user_place.place_id, user_id: @user_place.user_id, wanna_go: @user_place.wanna_go }
    end

    assert_redirected_to user_place_path(assigns(:user_place))
  end

  test "should show user_place" do
    get :show, id: @user_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_place
    assert_response :success
  end

  test "should update user_place" do
    patch :update, id: @user_place, user_place: { already_being_there: @user_place.already_being_there, place_id: @user_place.place_id, user_id: @user_place.user_id, wanna_go: @user_place.wanna_go }
    assert_redirected_to user_place_path(assigns(:user_place))
  end

  test "should destroy user_place" do
    assert_difference('UserPlace.count', -1) do
      delete :destroy, id: @user_place
    end

    assert_redirected_to user_places_path
  end
end
