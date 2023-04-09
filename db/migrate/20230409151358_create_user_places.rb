class CreateUserPlaces < ActiveRecord::Migration
  def change
    create_table :user_places do |t|
      t.references :place, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :wanna_go
      t.boolean :already_being_there

      t.timestamps null: false
    end
  end
end
