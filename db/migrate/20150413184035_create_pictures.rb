class CreatePictures < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :listing_id, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
