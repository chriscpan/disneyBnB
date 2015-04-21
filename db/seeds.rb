# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Listing.destroy_all
Image.destroy_all

user1 = User.create(
  username: 'Elsa',
  email: 'Elsa@Arrendale',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-elsa.jpg',
  description: "From the outside, Elsa looks poised, regal and reserved, but in reality, she lives in fear as she wrestles with a mighty secret—she was born with the power to create ice and snow. It's a beautiful ability, but also extremely dangerous. Haunted by the moment her magic nearly killed her younger sister Anna, Elsa has isolated herself, spending every waking minute trying to suppress her growing powers. Her mounting emotions trigger the magic, accidentally setting off an eternal winter that she can't stop. She fears she's becoming a monster and that no one, not even her sister, can help her."
  )

user2 = User.create(
  username: 'Russel',
  email: 'Russel@Up',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-russel.jpg',
  description: "Russell is a loud, hyperactive, anxious, high-strung, and curious but fun-loving boy. His behavior and personality often annoyed Carl. That fact that he had chocolate with him suggests that he may like candy, that could also explain why he is overweight.
Russell beholds a spirit that somewhat reminded Carl of Ellie in Russell's curious nature and determination to do the right thing in helping Kevin, and they bonded in a grandfather/grandson-like relationship."
  )

user3 = User.create(
  username: 'Scar',
  email: 'Scar@PrideRock',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-scar.jpg',
  description: "As Mufasa's brother, Scar was next in line to take the throne until Simba came along. Scar's lack of physical prowess is more than made up for by his devious cunning as he plots to take back his birthright with his henchman hyenas by his side. He is a selfish and greedy leader, nearly destroying the pride and the land in which they lived."
  )

user4 = User.create(
  username: 'Woody',
  email: 'Woody@ToyStory',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-woody.jpeg',
  description: "Woody is a really loyal toy who has been Andy's favorite toy since kindergarten. Woody is determined, passionate, and would do anything for his nearest and dearest friends. He considers everyone as a family and he tries his best to keep his family together at all times. Yet, he is a flawed character. He has a lot of bouts of doubt, anger, frustration, uncertainty, and sadness, almost like a human. But despite his jumbled emotions, he tries his very best not to show them to his friends to seem brave and courageous, but he's not afraid to confront or comfort his friends with utmost care."
  )

user5 = User.create(
  username: 'Jafar',
  email: 'Jafar@Alladin',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-jafar.jpg',
  description: "Whilst presenting a charming and respectable exterior to the Sultan and the people of Agrabah, he secretly holds everyone around him in contempt and manipulates the Sultan by means of hypnotizing him with a magical snake-headed staff, which he always carries on his person. Even regarding his desiring marriage for Jasmine afterwards, it was solely so he could gain control of the throne and intended to kill her soon thereafter—though he later reneges on this in an attempt to make her his queen consort. He's traveled widely and amassed a wide knowledge of magical artifacts and legends. Until he uses Genie's powers to become a sorcerer, however, his magical abilities are limited to the use of such artifacts as he's collected, and his prowess as an accomplished alchemist."
  )

user6 = User.create(
  username: 'Bambi',
  email: 'Bambi@Woods',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-bambi.jpg',
  description: "Bambi is not very strongly characterized. This was one of the film’s key strengths as an environmental film, the point because Bambi---as with most of his friends---is similar to any deer in any forest. In his early youth, Bambi has the full measure of charm that many young mammals display, with his wide eyes, spindly legs, curious nature and a good cute voice. As he grows he gradually becomes more mature, but even in young adulthood he always seems a very young buck, with a graceful build and a fairly naïve, shy nature. He was nicer than his mean rival, Ronno who being jealous to poor Bambi. When he had two fawns, Geno and Gurri, he likes to be a carefree father for being happy and sweet to his children."
)

user7 = User.create(
  username: 'Rapunzel',
  email: 'Rapunzel@Tangled',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-rapunzel.jpg',
  description: "Rapunzel is not a typical Disney Princess; she carries her blonde hair, which is 70 feet long, and has the magical ability to both heal and reverse aging when she sings a special Healing Incantation song. Kidnapped by Mother Gothel when she was still an infant, Rapunzel had been raised and locked away in a tall tower up until her 18th birthday, when she is 'rescued' by Flynn Rider. However, she does view Mother Gothel as her maternal mother despite being kidnapped. Rapunzel spends her time painting, cooking, candle-making, reading, brushing her hair, playing with Pascal, observing the outside world from within the tower, singing, and interacting with Mother Gothel. Being immensely fascinated by the floating lanterns that took place on her birthday every year, Rapunzel begins to develop a sense of curiosity and seeks to fulfill the dream of seeing those 'lights in the sky' one day. However, she does not overcome Mother Gothel's strict guardianship and thus has been staying in the tower, longing for the day when her life 'begins.'"
)

user8 = User.create(
  username: 'Pascal',
  email: 'Pascal@Tangled',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-pascal.jpg',
  description: "Pascal is a true and loyal friend to Rapunzel. Even though he can't communicate verbally, it is clear that he is one of the driving forces in helping Rapunzel see that she needs to leave the tower. Pascal is constantly cheering her up, rooting her on, and refusing to allow her to take steps backwards. However, even though he cheers her on, he doesn't know much about the outside world either, and despite being just as excited as Rapunzel to experience it, he was originally just as afraid. Since he is a chameleon, he can change color, usually to express his mood with his colors."
)

user9 = User.create(
  username: 'Baymax',
  email: 'Baymax@BigHero6',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-baymax.jpeg',
  description: "Baymax was created by the brilliant Tadashi Hamada as a healthcare providing robot nurse for the citizens of San Fransyoko and his brother, Hiro Hamada. Tadashi's goal in creating Baymax was to help improve healthcare around the world, basically wanting nothing more than to use his creation and genius for the better of humanity. To provide him with his programming, and overall personality, Baymax was given a special chip with Tadashi's inscriptions, which makes him the lovable robot he truly is. Without it, he can be conceived as an entirely different being. As programming would have, Baymax is instantly summoned by the sound of distress, and can only deactivate once his current patient states 'I am satisfied with my care.'"
)

user10 = User.create(
  username: 'Dory',
  email: 'Dory@Sharks',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-dory.jpg',
  description: "She is very friendly and makes quickly makes friends with her warm hearted and fun personality. Her kindness was shown as she continued to accompany Marlin on his journey despite his lack of patience with her and his sometimes harsh comments. She developed such a close relationship with Marlin that her short term memory loss seemed to have improved, as she herself states 'Please don't leave me. No one has ever stayed with me this long and when I look at you, I remember stuff better'. The two remain close friends by the end of the film."
)

user11 = User.create(
  username: 'Merida',
  email: 'Merida@Brave',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-merida.jpg',
  description: "Princess Merida is the headstrong and free-spirited 16-year-old tomboyish, willful daughter of Queen Elinor, who rules the kingdom alongside her husband, King Fergus. Queen Elinor's expectations of her daughter cause Merida to see Elinor as being distant while also causing friction between the two. Despite Elinor's desire to see Merida as a proper royal lady, Merida is an impetuous girl who wants to take control of her own destiny. Merida has honed her skill in archery, and is one of the most skilled archers ever seen. She is also skilled in sword-fighting and racing across the countryside on her horse, Angus. Despite her outgoing, forceful, headstrong and willful personality, Merida does have a playful softness of heart; particularly when it comes to her younger triplet brothers."
)

user12 = User.create(
  username: 'Mushu',
  email: 'Mushu@Mulan',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-mushu.jpg',
  description: "In contrast to Mulan, Mushu is in most situations more comical, overconfident, funny and impulsive. He strives to be one of the family guardians again and selfishly decides to convince Mulan to join the army to turn her into a war hero, believing this will get him back on the 'top shelf.' However, he comes to realize how selfish he has been, admitting to Mulan that he risked her life to further his own goals. He then intends to take her home to face the consequences of his actions, but when she insists on stopping the Huns, Mushu loyally follows her, showing that underneath, he has a good heart. Mushu is rather sensitive about his size."
)

user13 = User.create(
  username: 'Ursula',
  email: 'Ursula@Mermaid',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-ursula.gif',
  description: "Ursula is a very dark and sinister villain with a sense a humor. Ursula is very manipulative and has a talent of making great sense and making persuasive points when trying to strike a deal. Unlike many Disney Villains, most of whom care very little for their followers, Ursula puts her henchmen Flotsam and Jetsam before anything and everyone else. Ursula treats the eels like children and refer to them as 'babies' or 'poopsies'. When the eels are killed accidentally by Ursula because of Ariel, she mourns and takes all of her anger and sadness out on Ariel and attempts to kill her once and for all. She is known to fill the heads of merpeople with deceptions; she feeds Ariel with the lie (or at best half-truth) that men on the surface like silence in women. In fact, Prince Eric loved Ariel's voice, and Ursula manipulated her into giving up precisely the thing that would have let him recognize the mysterious girl who had saved him from the sea. Despite using contracts to get her way, Ursula has little regard for following her end of the bargain. This is demonstrated when immediately after Triton signed away his freedom for Ariel's safety, Ursula claims she'd have no qualms killing Ariel, despite being implied to have promised to not harm Ariel as a condition of the contract, and gleefully tries to in the final battle. The latter instance is possibly due to Ariel being the cause of Flotsam and Jetsam's deaths"
)

user14 = User.create(
  username: 'Tony Stark',
  email: 'Tony@Iron',
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-tony.jpg',
  description: "Tony Stark is an outgoing man who enjoys drinking and gambling, all the while possessing the capacity to become an expert in thermonuclear astrophysics overnight. As a millionaire playboy, he had enjoyed his extravagant lifestyle, all the while selling and creating new dangerous weapons."
)

user15 = User.create(
  username: 'Steve Rogers',
  email: "Steve@America",
  password: 'password',
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-steve.jpg',
  description: "Steve Rogers is a nice and generous young man and he helps out his team whenever possible. He stays true to ideal American values, and would sacrifice his life for any other good citizen. Steve is a courageous and independent leader for his team. His personality reflects an ideal person consisting of good morals, a positive attitude with a selfless mind. He also does not take kindly to reckless behavior or suffer fools gladly."
)

user16 = User.create(
  username: 'Thor Odinson',
  email: 'Thor@Odin',
  password: "password",
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-thor.jpeg',
  description: "He has a large amount of respect for family, who have defined his personality -- his father Odin and his mother Frigga, who he loves very much. Had it not been for his wise father, he would still be full of arrogancy and irresponsibility, a fact that he is well aware of. His mother's similarly wise but gentle touch taught him to fight for good. He has a complicated relationship with his troublemaking brother Loki, upset with him for the trouble he has caused on Earth and Asgard. However, he does care for his brother, and wishes for him to stop his dangerously mischievous ways. However, he is not above fighting his brother if it means protecting others."
)

user17 = User.create(
  username: 'Natasha Romanoff',
  email: 'Natasha@Widow',
  password: "password",
  picture_url: 'https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/user-natasha.jpg',
  description: "Natasha Romanoff is a Level 7 S.H.I.E.L.D. operative, working there since Hawkeye, alias Agent Clint Barton, was sent to kill her, but decided to bring her in to work for them, instead. She works undercover as a legal aid at Stark Industries in Iron Man 2, after being sent there to collect intel on Tony Stark. In the 2012 Marvel film the Avengers, she works together with Captain America (Steve Rogers), Tony Stark (Iron Man), Thor, Bruce Banner (the Hulk), and Clint Barton (Hawkeye) to defeat Loki and his army."
)

listing1 = Listing.create(
  price: 100,
  capacity: 2,
  title: 'Arrendale Castle',
  address: '123 Frozen',
  description: "It is located in a defensive position guarding the fjord that leads to Arendelle's harbor. Due to Elsa's unstable control of her powers, the castle grounds were considered off-limits to the outside world by her parents, out of concern for the kingdom's protection, along with Anna's and Elsa's as well.
After 13 years, Anna helps Elsa finally gain control of her powers, declaring to never again close the castle gates, therefore allowing visitors into the castle.",
  owner_id: 1,
  latitude: 37.768853,
  longitude: -122.474536
)
  image101 = Image.create(
    listing_id: 1,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/arrendale-castle.jpg"
  )
  image102 = Image.create(
    listing_id: 1,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/arrendale-room-1.jpg"
  )
  image103 = Image.create(
    listing_id: 1,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/arrendales-room-2.jpg"
  )

listing2 = Listing.create(
  price: 100,
  capacity: 2,
  title: 'Paradise Falls',
  address: '123 Sky',
  description: 'Ever since childhood, Ellie had planned to move her clubhouse next to Paradise Falls. Carl promised to help her get there. After the two had gotten married and spent their lives together, Ellie died of old age before they could ever make their dream happen. Left with the task to make it there for Ellie, Carl travels to South America to find Paradise Falls.',
  owner_id: 2,
  latitude: 37.835043,
  longitude: -122.452049
)
  image201 = Image.create(
    listing_id: 2,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/paradise-falls.jpg"
  )
  image202 = Image.create(
    listing_id: 2,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/paradise-falls-room-1.jpg"
  )
  image203 = Image.create(
    listing_id: 2,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/paradise-falls-room-2.jpg"
  )

listing3 = Listing.create(
  price: 200,
  capacity: 2,
  title: 'Elephant Graveyard',
  address: '123 King',
  description: 'The Elephant Graveyard is located beyond a rise that marks the northern border of the Pride Lands. It is a dry, barren, rocky wasteland, perpetually covered in fog that casts a shadow over the area, even in the daytime. Bones of dead elephants litter the landscape. The area is geothermally active, containing many natural steam vents. It was the home of the hyenas.
The Graveyard is named after the various elephant skeletons that litter the area. It is also known for the numerous geysers that were located there. The graveyard is visible from Pride Rock as a shadowy area. It has been speculated that part of the reason the Elephant Graveyard is such a terrible place is because the hyenas live there, especially considering what they did to the Pride Lands during their residence there.',
  owner_id: 3,
  latitude: 37.7833,
  longitude: -122.4167
)
  image301 = Image.create(
    listing_id: 3,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/elephant-graveyard.jpg"
  )
  image302 = Image.create(
    listing_id: 3,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/elephant-graveyard-room-1.png"
  )
  image303 = Image.create(
    listing_id: 3,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/elephant-graveyard-room-2.jpg"
  )

listing4 = Listing.create(
  price: 400,
  capacity: 4,
  title: 'Atlantica',
  address: '123 Atlantis',
  description: "The kingdom is located beneath the Pacific Ocean and is ruled by the sea king, King Triton. Atlantica's most famous residents are none other than King Triton's adventurous daughter Ariel, her best friend Flounder and the court composer crab Sebastian. These friends usually get Atlantica in hot water but cleans up the mess they sometimes start. The Kingdom was once ruled for a short time by the evil sea witch and former member of the royal court of King Triton, Ursula.",
  owner_id: 13,
  latitude: 37.76244,
  longitude: -122.5550
)
  image401 = Image.create(
    listing_id: 4,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/atlantica.png"
  )
  image402 = Image.create(
    listing_id: 4,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/atlantica-room-1.jpg"
  )
  image403 = Image.create(
    listing_id: 4,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/atlantica-room-2.jpg"
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
)
  image501 = Image.create(
    listing_id: 5,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/agrabah.jpg"
  )
  image502 = Image.create(
    listing_id: 5,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/agrabah-room-1.png"
  )
  image503 = Image.create(
    listing_id: 5,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/agrabah-room-2.png"
  )


listing6 = Listing.create(
  price: 50,
  capacity: 7,
  title: 'Pride Rock',
  address: '123 Lion Way',
  description: "Pride Rock is the home of the Lion King and his lionesses, and functions as his throne. The pride makes their den in a cavern in one part of the formation. It is shown to be so tall, that one can see the entire Pride Lands from its peak, and vice versa. The formation can be seen from any part of the Pride Lands. Because of this, the area serves as a gathering place for many events.",
  owner_id: 3,
  latitude: 37.690785,
  longitude: -122.443664
)
  image601 = Image.create(
    listing_id: 6,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/pride-rock.jpg"
  )
  image602 = Image.create(
    listing_id: 6,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/pride-rock-room-1.jpg"
  )
  image603 = Image.create(
    listing_id: 6,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/pride-rock-room-2.jpg"
  )

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
  image701 = Image.create(
    listing_id: 7,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/andys-room.jpg"
  )
  image702 = Image.create(
    listing_id: 7,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/andys-room-1.jpg"
  )
  image703 = Image.create(
    listing_id: 7,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/andys-room-2.jpg"
  )

listing8 = Listing.create(
  price: 400,
  capacity: 1,
  title: "Rapunzel's Tower",
  address: "123 Tangle Lane",
  description: "Rapunzel's Tower is hidden in a large rock pit by a cave. The cave leads out into the forest with its opening hidden by a curtain of plants. At the base of the tower is an alternate entrance Mother Gothel used to go in and out of the tower before she took Rapunzel and in the years that she was too young to pull her up, with a hidden trapdoor leading up into the main rooms of the Tower.\n
Within the tower and over the years, Rapunzel has painted a series of murals. The tower has several rooms including bedrooms for both Rapunzel and Mother Gothel, a central room which would be the primary location of Rapunzel's gallery, and a staircase leading to an upstairs room.",
  owner_id: 8,
  latitude: 37.828015,
  longitude: -122.374920
)
  image801 = Image.create(
    listing_id: 8,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/rapunzel-tower.png"
  )
  image802 = Image.create(
    listing_id: 8,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/rapunzels-room-1.jpg"
  )
  image803 = Image.create(
    listing_id: 8,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/rapunzels-room-2.jpg"
  )

listing9 = Listing.create(
  price: 300,
  capacity: 3,
  title: "The Forest",
  address: "123 Deer Lane",
  description: "The forest is where Bambi and other characters live. It is the main setting of Bambi and Bambi II. It is also where Bambi, Flower and Thumper raise their families.",
  owner_id: 6,
  latitude: 37.855617,
  longitude: -122.544638
)
  image901 = Image.create(
    listing_id: 9,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/forest-room-1.jpg"
  )
  image902 = Image.create(
    listing_id: 9,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/forest-room-2.jpg"
  )
  image903 = Image.create(
    listing_id: 9,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/forest-room-3.jpg"
  )

listing10 = Listing.create(
  price: 600,
  capacity: 2,
  title: "Corona Castle",
  address: "123 Lantern Way",
  description: "The castle was one of the last buildings to be built on the island. Every year on Rapunzel's birthday, the entire kingdom sends floating lanterns into the sky. The King and Queen release the first lantern at the castle. 18 years later, Flynn Rider and The Stabbington Brothers break into the castle to steal the crown of the lost princess. When Rapunzel finally meet her true parents, they meet in the castle.",
  owner_id: 7,
  latitude: 37.863207,
  longitude: -122.430655
)
  image1001 = Image.create(
    listing_id: 10,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/corona-room-1.jpg"
  )
  image1002 = Image.create(
    listing_id: 10,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/corona-room-2.jpg"
  )
  image1003 = Image.create(
    listing_id: 10,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/corona-room-3.jpg"
  )

listing11 = Listing.create(
  price: 450,
  capacity: 3,
  title: "San Fransokyo",
  address: "123 Robot Lane",
  description: "The layout of the city is a futuristic hybrid of artistic and technological architecture, and a blend of both San Francisco and Tokyo architectural styles. Built on the coast of the Pacific Ocean, the city is designed to withstand the risk of earthquakes. The city is also a center for vast cultures besides the dominant Eastern and Western themes. However, behind the bright aesthetic is the underworld of illegal bot fighting, often located in the dark, grungy alleys of the city. Many of the buildings in the city were constructed by Alistair Krei and his company, Krei Tech.",
  owner_id: 9,
  latitude: 37.786054,
  longitude: -122.429904
)
  image1101 = Image.create(
    listing_id: 11,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/san-fransokyo-room-1.jpg"
  )
  image1102 = Image.create(
    listing_id: 11,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/san-fransokyo-room-3.jpg"
  )
  image1103 = Image.create(
    listing_id: 11,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/san-fransokyo-room02.jpg"
  )

listing12 = Listing.create(
  price: 75,
  capacity: 4,
  title: "Great Barrier Reef",
  address: "123 Jellyfish Circle",
  description: "Two ocellaris clownfish, Marlin and his wife Coral, admire their new home in the Great Barrier Reef and their clutch of eggs when a barracuda attacks, knocking Marlin unconscious. He wakes up to find Coral and all but one of the eggs have disappeared. Marlin names this last egg Nemo, a name that Coral liked.",
  owner_id: 10,
  latitude: 37.717783,
  longitude: -122.312981
)
  image1201 = Image.create(
    listing_id: 12,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/nemo-room-1.jpg"
  )
  image1202 = Image.create(
    listing_id: 12,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/nemo-room-2.jpg"
  )
  image1203 = Image.create(
    listing_id: 12,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/nemo-room-3.jpg"
  )

listing13 = Listing.create(
  price: 250,
  capacity: 5,
  title: "Forest of Mor'du",
  address: "123 Bear St",
  description: "Mor'du was once a human prince, the eldest of four brothers, all the sons of a wise king beloved by his people. One dark autumn, the king grew ill. On his death-bed, the king requested the kingdom be divided among his four sons, so together they could be the pillars that would hold it together and maintain peace. Alas, his firstborn son felt that, as the eldest and the technical heir, he alone had the right to rule the whole kingdom and a seed of selfishness grew in him like a poison. To his brothers, he claimed his right to rule and demanded their obedience, shattering the bonds of their brotherhood by breaking the family stone.",
  owner_id: 11,
  latitude: 37.886513,
  longitude: -122.586953
)
  image1301 = Image.create(
    listing_id: 13,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/mordu-forest-room-1.jpg"
  )
  image1302 = Image.create(
    listing_id: 13,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/mordu-forest-room-2.jpg"
  )
  image1303 = Image.create(
    listing_id: 13,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/mordu-forest-room-3.jpg"
  )

listing14 = Listing.create(
  price: 800,
  capacity: 8,
  title: "Stark Tower",
  address: "123 Iron Way",
  description: "Located in Midtown Manhattan, New York City, USA, the complex is named after its owner Tony Stark, who is the alter ego of the superhero Iron Man. The structure is composed of a 93-story Main Tower flanked by a 35-story South Building and 55-story North Building. Located at the top of the Main Tower was the Watchtower of the superhero The Sentry, but it has been replaced by Heimdall's observatory. The Main Tower is informally known as Avengers Tower, as it serves as the headquarters of the superhero team, the Avengers, similar to the Avengers Mansion.",
  owner_id: 14,
  latitude: 40.808179,
  longitude: -73.959546
)
  image1401 = Image.create(
    listing_id: 14,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/stark-tower-room-1.jpg"
  )
  image1402 = Image.create(
    listing_id: 14,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/stark-tower-room-2.jpg"
  )
  image1403 = Image.create(
    listing_id: 14,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/stark-tower-room-3.jpg"
  )

listing15 = Listing.create(
  price: 400,
  capacity: 3,
  title: "Triskelion",
  address: "123 Shield St",
  description: "In the Ultimate Marvel universe, the Triskelion is the island headquarters of S.H.I.E.L.D. and formerly inhabited by the Ultimates. The Triskelion's architectural design was planned and layout by architect Frank Gehry. The Triskelion was originally designed by British architect Norman Foster and planned to have mobility like the Helicarrier, but never came to be due to monetary problems. The Triskelion was partially, but significantly, destroyed by the Liberators when its super-soldiers pushed and scuttled the S.H.I.E.L.D. Helicarrier onto the facility, which the Scarlet Witch (who was present in Nick Fury's office) used her powers in saving only the first three floors of the building and everyone within them.",
  owner_id: 15,
  latitude: 40.818833,
  longitude: -73.898778
)
  image1501 = Image.create(
    listing_id: 15,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/hub-room-1.jpg"
  )
  image1502 = Image.create(
    listing_id: 15,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/triskelion-room-2.jpg"
  )
  image1503 = Image.create(
    listing_id: 15,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/triskelion-room-3.jpg"
  )


listing16 = Listing.create(
  price: 900,
  capacity: 4,
  title: "Gate to Asgard",
  address: "123 Hammer St",
  description: "Asgard is the home realm of the Asgardians. It is ruled by Odin the Allfather; other notable inhabitants include Thor, Loki and Frigga. It is based on the Norse mythological world of the same name.
Asgard is a celestial planetoid in an unknown part of the Marvel Universe. It is not a planet like Earth or Jotunheim, but is instead a flat, mystical realm filled with cliffs and waterfalls that pour out space.",
  owner_id: 16,
  latitude: 40.772309,
  longitude: -73.973279
)
  image1601 = Image.create(
    listing_id: 16,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/asgard-room-1.png"
  )
  image1602 = Image.create(
    listing_id: 16,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/asgard-room-2.jpg"
  )
  image1603 = Image.create(
    listing_id: 16,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/asgard-room-3.jpg"
  )

listing17 = Listing.create(
  price: 500,
  capacity: 3,
  title: "S.H.I.E.L.D Aircraft",
  address: "123 Secret St",
  description: "The Helicarrier, an aircraft carrier specifically designed to be itself capable of independent powered flight in addition to the standard functions of aircraft carriers, is the world headquarters and signature capital ship of the extra-governmental intelligence/defense agency S.H.I.E.L.D..Built by Stark Industries and designed by Tony Stark, Dr. Reed Richards, and former X-Man Forge. In addition to housing wings of fighters and other aircraft, the Helicarrier bristles with advanced weaponry, including an intercontinental ballistic missile.",
  owner_id: 17,
  latitude: 40.669008,
  longitude: -74.039197
)
  image1701 = Image.create(
    listing_id: 17,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/aircraft-room-1.png"
  )
  image1702 = Image.create(
    listing_id: 17,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/aircraft-room-2.jpg"
  )
  image1703 = Image.create(
    listing_id: 17,
    image_url: "https://s3-us-west-1.amazonaws.com/disneybnb/disneybnb-images/aircraft-room-3.jpeg"
  )
