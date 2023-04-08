class UserTrip < ActiveRecord::Migration
  def change
    create_table :user_trip do |t|
      t.references :user
      t.references :city
      t.datetime :date_start
      t.datetime :date_end
    end
  end
end
