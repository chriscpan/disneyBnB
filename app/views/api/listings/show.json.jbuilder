json.extract! @listing, :id, :owner_id, :price, :capacity, :address, :description, :title, :latitude, :longitude

json.images @listing.images do |image|
  json.extract! image, :id, :listing_id, :image_url
end

json.reservations @listing.reservations do |reservation|
  json.extract! reservation, :user_id, :listing_id, :capacity, :start_date, :end_date, :status
end
