json.extract! user_place, :id, :place_id, :user_id, :wanna_go, :already_being_there, :created_at, :updated_at
json.url user_place_url(user_place, format: :json)
