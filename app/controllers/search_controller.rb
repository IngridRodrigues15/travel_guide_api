class SearchController < ApplicationController
  def search
    @city = params[:city_name]
    @days = params[:days]
    # @weather = Weather.new(@city, @days).forecast
    
    @places = ::GooglePlaces.new(@city).api
    @places = JSON.parse(@places)

  end
end