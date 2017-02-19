# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
