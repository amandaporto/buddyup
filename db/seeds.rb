# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


foo = User.create(name:"Foo Bar", zip:"Tampa, FL")
foo.activities.create([sport: "Soccer", skill_level: "Beginner"])

jason = User.create(name:"Jason Perry", zip:"St Pete, FL")
jason.activities.create([sport: "Baseball", skill_level: "Professional"])

gavin = User.create(name:"Gavin Startk", zip:"St Pete, FL")
gavin.activities.create([sport: "Biking", skill_level: "Advanced"])
