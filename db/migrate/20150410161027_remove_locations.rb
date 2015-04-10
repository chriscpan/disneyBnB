class RemoveLocations < ActiveRecord::Migration
  def change
    drop_table :locations

    add_column :listings, :longitude, :float, null: false
    add_column :listings, :latitude, :float, null: false
  end
end
