json.extract! @user, :username, :email

json.listings @user.listings.each do |listing|
  json.extract! listing, :price, :capacity, :title, :address, :description
end
