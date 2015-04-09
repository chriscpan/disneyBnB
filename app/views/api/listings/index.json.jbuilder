# json.listings @listings.each do |listing|
#   json.extract! listing, :owner_id, :price, :capacity, :address, :description, :title
# end


# json.array! @listings, :id, :owner_id, :price, :capacity, :address, :description, :title

json.array! @listings do |listing|
  json.extract! listing, :id, :owner_id, :price, :capacity, :address, :description, :title
  json.location do
    json.extract! listing.location, :id, :listing_id, :longitude, :latitude
  end
end
