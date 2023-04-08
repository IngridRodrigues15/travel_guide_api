class UserPlaces < ActiveRecord::Migration
  def change
    create_table :user_places do |t|
      t.references :user
      t.references :place
      t.boolean :wanna_go
      t.boolean :already_being_there
    end
  end
end
