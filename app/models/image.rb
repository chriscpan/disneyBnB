# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  listing_id :integer          not null
#  image_url  :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Image < ActiveRecord::Base
  validates :listing_id, :image_url, presence: true

  belongs_to(
    :listing,
    class_name: "Listing",
    foreign_key: :listing_id,
    primary_key: :id
  )
end
