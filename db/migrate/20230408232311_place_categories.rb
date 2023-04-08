class PlaceCategories < ActiveRecord::Migration
  def change
    create_table :place_categories do |t|
      t.references :place
      t.references :category
    end
  end
end
