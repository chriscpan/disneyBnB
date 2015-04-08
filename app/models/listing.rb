class Listing < ActiveRecord::Base

  validates :price, :capacity, :title, :address, :owner_id, presence: true
  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :owner_id,
    primary_key: :id
  )
end
