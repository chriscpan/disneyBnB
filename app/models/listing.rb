# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  owner_id    :integer          not null
#  price       :integer          not null
#  capacity    :integer          not null
#  title       :string           not null
#  address     :string           not null
#  description :text             not null
#  created_at  :datetime
#  updated_at  :datetime
#  longitude   :float            not null
#  latitude    :float            not null
#

class Listing < ActiveRecord::Base
  # include Geokit::Geocoders
  validates :price, :capacity, :title, :address, :owner_id, :longitude, presence: true

  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :owner_id,
    primary_key: :id
  )

  acts_as_mappable(
    default_units: :miles,
    lat_column_name: :latitude,
    lng_column_name: :longitude
  )


end
