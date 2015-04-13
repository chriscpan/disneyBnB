# json.extract! @listing, :id, :owner_id, :price, :capacity, :address, :description, :title


json.extract! @listing, :id, :owner_id, :price, :capacity, :address, :description, :title, :latitude, :longitude
json.images @listing.images do |image|
  json.extract! image, :id, :listing_id, :image_url
end
