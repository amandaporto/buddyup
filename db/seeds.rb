# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


foo = User.create(name:"Foo Bar", zip:"33701")
foo.activities.create([sport: "Soccer", skill_level: "Beginner"])

jason = User.create(name:"Jason Perry", zip:"33625")
jason.activities.create([sport: "Biking", skill_level: "Professional"])

gavin = User.create(name:"Gavin Startk", zip:"33606")
gavin.activities.create([sport: "Biking", skill_level: "Advanced"])
gavin.activities.create([sport: "Soccer", skill_level: "Intermediate"])

chad = User.create(name:"Chad Oakley", zip:"33625")
chad.activities.create([sport: "Basketball", skill_level: "Intermediate"])

mark = User.create(name:"Mark Smith", zip:"33701")
mark.activities.create([sport: "Basketball", skill_level: "Professional"])
mark.activities.create([sport: "Tennis", skill_level: "Advanced"])

toni = User.create(name:"Toni Aliberti", zip:"33606")
toni.activities.create([sport: "Tennis", skill_level: "Advanced"])

amanda = User.find(7)
amanda.activities.create([sport: "Tennis", skill_level: "Advanced"])
amanda.activities.create([sport: "Biking", skill_level: "Beginner"])
