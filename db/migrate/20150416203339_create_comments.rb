class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id, null: false
      t.integer :listing_id, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
