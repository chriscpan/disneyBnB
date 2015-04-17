class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :picture_url, :string
    add_column :users, :description, :text
  end
end
