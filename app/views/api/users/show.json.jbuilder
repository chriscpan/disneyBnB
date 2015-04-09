json.extract! @user, :username, :email

json.listings @user.listings do |listing|
  json.extract! listing, :id, :price, :capacity, :title, :address, :description
end
