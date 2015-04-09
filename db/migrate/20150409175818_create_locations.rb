class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :listing_id, null: false
      t.integer :longitude, null: false
      t.integer :latitude, null: false

      t.timestamps
    end
  end
end
