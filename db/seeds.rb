# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Listing.destroy_all

  user1 = User.create(username: 'Elsa', email: 'Elsa@Arrendale', password: 'password')
  user2 = User.create(username: 'Russel', email: 'Russel@Up', password: 'password')
  user3 = User.create(username: 'Scar', email: 'Scar@PrideRock', password: 'password')
  user4 = User.create(username: 'Woody', email: 'Woody@ToyStory', password: 'password')
  user5 = User.create(username: 'Jafar', email: 'Jafar@Alladin', password: 'password')



listing1 = Listing.create( price: 100, capacity: 2, title: 'Arrendale Castle',
 address: '123 Frozen',  description: 'olaf!', owner_id: 1
)
listing2 = Listing.create( price: 100, capacity: 2, title: 'The Sky',
 address: '123 Sky',  description: 'balloons!', owner_id: 2
)
listing3 = Listing.create( price: 200, capacity: 2, title: 'Elephant Graveyard',
 address: '123 King', description: 'lions!', owner_id: 3
)

location1 = Location.create(listing_id: 1, longitude: -122, latitude: 37)
location2 = Location.create(listing_id: 2, longitude: -122, latitude: 37)
location3 = Location.create(listing_id: 3, longitude: -122, latitude: 37)
