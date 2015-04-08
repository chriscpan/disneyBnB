json.listings @listings.each do |listing|
  json.extract! listing, :owner_id, :price, :capacity, :address, :description, :title
end
