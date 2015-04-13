class Listing < ActiveRecord::Base

  validates :price, :capacity, :title, :address, :owner_id, :location, :longitude, presence: true

  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :owner_id,
    primary_key: :id
  )

  has_one(
    :location,
    class_name: 'Location',
    foreign_key: :listing_id,
    primary_key: :id
  )

  acts_as_mappable(
    default_units: :miles,
    distance: :distance,
    lat_column_name: :lat,
    lng_column_name: :lng
  )

end
