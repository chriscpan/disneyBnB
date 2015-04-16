class Comment < ActiveRecord::Base

  validates :author_id, :listing_id, :content, presence: true

  belongs_to(
    :author,
    class_name: "User",
    foreign_key: :author_id,
    primary_key: :id
  )

  belongs_to(
    :listing,
    class_name: "Listing",
    foreign_key: :listing_id,
    primary_key: :id
  )

  
end
