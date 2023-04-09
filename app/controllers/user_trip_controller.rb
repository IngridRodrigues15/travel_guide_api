class UserTripController < ApplicationController

  def new
    @user_trip = UserTrip.new
    @cities = City.all 
  end

  def create
    @user_trip = UserTrip.new(params)
    @user_trip.user_id = current_user.id
    if @user_trip.save 
      redirect_to new_preference_path
    else
      render 'new'
    end
  end

  private

  def params
    params.require(:city_id)
  end
end
