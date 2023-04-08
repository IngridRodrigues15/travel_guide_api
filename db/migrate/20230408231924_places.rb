class Places < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :city
      t.string :name
    end
  end
end
