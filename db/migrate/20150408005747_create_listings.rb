class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :owner_id, null: false
      t.integer :price, null: false
      t.integer :capacity, null: false
      t.string :title, null: false
      t.string :address, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
