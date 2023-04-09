class CreateCity < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.string :country
      t.string :location_info

      t.timestamps null: false
    end
  end
end
