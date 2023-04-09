json.extract! user_trip, :id, :user_id, :city_id, :created_at, :updated_at
json.url user_trip_url(user_trip, format: :json)
