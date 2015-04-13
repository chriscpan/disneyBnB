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
  latitude: 37.768853,
  longitude: -122.474536
)

listing2 = Listing.create(
  price: 100,
  capacity: 2,
  title: 'Paradise Falls',
  address: '123 Sky',
  description: 'balloons!',
  owner_id: 2,
  latitude: 37.835043,
  longitude: -122.452049
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

listing5 = Listing.create(
  price: 500,
  capacity: 10,
  title: 'Agrabah',
  address: '123 Genie Way',
  description: "Agrabah's most prominent feature is its palace, which was inspired by the Taj Mahal, located in Agra, India. Though commonly mistaken by many to be a palace, the Taj Mahal is actually a mausoleum (tomb) for a dead panguian (wife of a sultan, equivalent to a queen consort); the Sultan's wife is also most likely dead as well. Agra, India is also known for it's population of monkeys and tigers; coincidentally Aladdin's pet, Abu is a monkey and Princess Jasmine's pet, Rajah is a tiger.",
  owner_id: 5,
  latitude: 37.799546,
  longitude: -122.451517
),

listing6 = Listing.create(
  price: 50,
  capacity: 7,
  title: 'Pride Rock',
  address: '123 Lion Way',
  description: "Pride Rock is the home of the Lion King and his lionesses, and functions as his throne. The pride makes their den in a cavern in one part of the formation. It is shown to be so tall, that one can see the entire Pride Lands from its peak, and vice versa. The formation can be seen from any part of the Pride Lands. Because of this, the area serves as a gathering place for many events.",
  owner_id: 3,
  latitude: 37.690785,
  longitude: -122.443664
),

listing7 = Listing.create(
  price: 150,
  capacity: 2,
  title: "Andy's Room",
  address: "123 Story Way",
  description: "Andy's Room is where all of Andy's toys are kept and where their stories and adventures begin in the films Toy Story, Toy Story 2 and Toy Story 3. Andy's Room is often used by Woody to hold a staff meeting for toys.",
  owner_id: 4,
  latitude: 37.749512,
  longitude: -122.487180
)

listing8 = Listing.create(
  price: 400,
  capacity: 1,
  title: "Rapunzel's Tower",
  address: "123 Tangle Lane",
  description: "Rapunzel's Tower is hidden in a large rock pit by a cave. The cave leads out into the forest with its opening hidden by a curtain of plants. At the base of the tower is an alternate entrance Mother Gothel used to go in and out of the tower before she took Rapunzel and in the years that she was too young to pull her up, with a hidden trapdoor leading up into the main rooms of the Tower.\n
Within the tower and over the years, Rapunzel has painted a series of murals. The tower has several rooms including bedrooms for both Rapunzel and Mother Gothel, a central room which would be the primary location of Rapunzel's gallery, and a staircase leading to an upstairs room.",
  owner_id: 1,
  latitude: 37.828015,
  longitude: -122.374920
)
