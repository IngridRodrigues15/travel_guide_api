class AddPositionToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :position, :int
  end
end
