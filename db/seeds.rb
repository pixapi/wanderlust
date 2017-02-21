# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Continent.destroy
Category.destroy
Place.destroy

africa = Continent.create(name: "Africa")
europe = Continent.create(name: "Europe")
asia = Continent.create(name: "Asia")
north_america = Continent.create(name: "North America")
south_america = Continent.create(name: "South America")
australia = Continent.create(name: "Australia")
antarctica = Continent.create(name: "Antarctica")

urban = Category.create(name: "Urban")
beach = Category.create(name: "Beach")
mountain = Category.create(name: "Mountain")
mystical = Category.create(name: "Mystical")

place2 = Place.create(name: "Serengeti National Park",
                    country: "Tanzania",
                    experience: "Being amazed by wildlife",
                    image_path: "http://www.zanzibarmagic.com/tanzania%20wildlife%20lodge%20safari%20serengeti%20ngorongoro%20manyara%20tarangire%2017.jpg",
                    category_id: 6,
                    continent_id: 1)

place3 = Place.create(name: "Fez",
                      country: "Morocco",
                      experience: "Feeling in the colorful tale of One Thousand and One nights",
                      image_path: "http://www.trtarabic.tv/wp-content/uploads/2015/06/04.jpg",
                      category_id: 5,
                      continent_id: 1)

place4 = Place.create(name: "Cappadocia",
                      country: "Turkey",
                      experience: "Cappadocia is known for its unique 'fairy chimneys', cone-shaped rock formations. In the mornings, the light across the landscape is breathtaking, and hot air balloons take flight. Today, pidgeons and people have homes in the valley walls.",
                      image_path: "https://cloud.githubusercontent.com/assets/8611986/23104878/42652200-f693-11e6-87a7-226ad0ee4c0a.jpg",
                      category_id: 5,
                      continent_id: 3)

place5 = Place.create(name: "Cartagena",
                      country: "Colombia",
                      experience: "Colorful colonial buildings, quaint squares, cobblestone lanes, as well as nightlife and beaches at a bargain price.",
                      image_path: "https://cloud.githubusercontent.com/assets/8611986/23105001/9763c3d6-f695-11e6-80e0-4ff4f2798eb4.jpg",
                      category_id: 7,
                      continent_id: 5)

place6 = Place.create(name: "Plitvice Lakes National Park",
                      country: "Croatia",
                      experience: "Breathtaking lakes and waterfalls in a lush setting. Extensive walkways and path to view the crystal-clear turquoise waters.",
                      image_path: "https://cloud.githubusercontent.com/assets/8611986/23105173/c233e170-f697-11e6-900f-8f7fd215852a.jpg",
                      category_id: 3,
                      continent_id: 2)

place7 = Place.create(name: "Lauterbrunnen Valley",
                      country: "Switzerland",
                      experience: "Dramatic vertical walls and sheer relief. Glaciers spilling off of walls, lush meadows, amazing views.",
                      image_path: "http://www.worldfortravel.com/wp-content/uploads/2015/10/Amazing-Lauterbrunnen.jpg",
                      category_id: 3,
                      continent_id: 2)
