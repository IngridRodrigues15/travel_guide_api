class Category < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon

      t.timestamps null: false
    end
  end
end
