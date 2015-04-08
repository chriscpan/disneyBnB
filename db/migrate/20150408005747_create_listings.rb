class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :owner_id, null: false
    end
  end
end
