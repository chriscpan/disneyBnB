class Location < ActiveRecord::Base
  validates :longitude, :latitude, presence: true
  validates :listing_id, presence: true, uniqueness: true

  belongs_to(
    :listing,
    class_name: 'Listing',
    foreign_key: :listing_id,
    primary_key: :id
  )
end
