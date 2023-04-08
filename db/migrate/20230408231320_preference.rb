class Preference < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.references :user
      t.references :category
    end
  end
end
