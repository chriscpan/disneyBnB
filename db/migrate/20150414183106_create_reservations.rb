class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id, null: false
      t.integer :listing_id, null: false
      t.integer :capacity, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
