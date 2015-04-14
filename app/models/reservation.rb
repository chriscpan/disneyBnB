class Reservation < ActiveRecord::Base
  validates :listing_id, :user_id, presence: true, uniqueness: true
  validates :capacity, :start_date, :end_date, :status, presence: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  belongs_to(
    :listing,
    class_name: "Listing",
    foreign_key: :listing_id,
    primary_key: :id
  )
end
