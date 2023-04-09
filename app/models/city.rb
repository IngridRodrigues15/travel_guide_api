class City < ActiveRecord::Base
  has_many :user_trip, dependent: :destroy

end
