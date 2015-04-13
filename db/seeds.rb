# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Listing.destroy_all

user1 = User.create(
  username: 'Elsa',
  email: 'Elsa@Arrendale',
  password: 'password'
  )

user2 = User.create(
  username: 'Russel',
  email: 'Russel@Up',
  password: 'password'
  )

user3 = User.create(
  username: 'Scar',
  email: 'Scar@PrideRock',
  password: 'password'
  )

user4 = User.create(
  username: 'Woody',
  email: 'Woody@ToyStory',
  password: 'password'
  )

user5 = User.create(
  username: 'Jafar',
  email: 'Jafar@Alladin',
  password: 'password'
  )

listing1 = Listing.create(
  price: 100,
  capacity: 2,
  title: 'Arrendale Castle',
  address: '123 Frozen',
  description: 'olaf!',
  owner_id: 1,
  latitude: 37.7850,
  longitude: -122.4280
)

listing2 = Listing.create(
  price: 100,
  capacity: 2,
  title: 'Paradise Falls',
  address: '123 Sky',
  description: 'balloons!',
  owner_id: 2,
  latitude: 37.7750,
  longitude: -122.4090
)

listing3 = Listing.create(
  price: 200,
  capacity: 2,
  title: 'Elephant Graveyard',
  address: '123 King',
  description: 'lions!',
  owner_id: 3,
  latitude: 37.7833,
  longitude: -122.4167
)

listing4 = Listing.create(
  price: 400,
  capacity: 4,
  title: 'Atlantica',
  address: '123 Atlantis',
  description: "The kingdom is located beneath the Pacific Ocean and is ruled by the sea king, King Triton. Atlantica's most famous residents are none other than King Triton's adventurous daughter Ariel, her best friend Flounder and the court composer crab Sebastian. These friends usually get Atlantica in hot water but cleans up the mess they sometimes start. The Kingdom was once ruled for a short time by the evil sea witch and former member of the royal court of King Triton, Ursula.",
  owner_id: 5,
  latitude: 37.76244,
  longitude: -122.5550
)
