# json.listings @listings.each do |listing|
#   json.extract! listing, :owner_id, :price, :capacity, :address, :description, :title
# end


json.array! @listings, :id, :owner_id, :price, :capacity, :address, :description, :title
