# json.listings @listings.each do |listing|
#   json.extract! listing, :owner_id, :price, :capacity, :address, :description, :title
# end


json.array! @listings, :owner_id, :price, :capacity, :address, :description, :title
