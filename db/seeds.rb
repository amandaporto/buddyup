# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


foo = User.create(name:"Foo Bar", address:"Tampa, FL")
foo.activities.create([sport: "Soccer", skill_level: "Beg"])

jason = User.create(name:"Jason Perry", address:"St Pete, FL")
jason.activities.create([sport: "Baseball", skill_level: "Int"])

gavin = User.create(name:"Gavin Startk", address:"St Pete, FL")
gavin.activities.create([sport: "Biking", skill_level: "Pro"])
