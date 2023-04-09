class CreatePlaceCategories < ActiveRecord::Migration
  def change
    create_table :place_categories do |t|
      t.references :place, index: true, foreign_key: true
      t.string :category

      t.timestamps null: false
    end
  end
end
