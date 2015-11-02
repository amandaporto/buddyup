# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Activity.create([name:'Volleyball'])
Activity.create([name:'Soccer'])
Activity.create([name:'Biking'])
Activity.create([name:'Tenis'])
Activity.create([name:'Running'])
Activity.create([name:'Baseball'])
Activity.create([name:'Football'])
Activity.create([name:'Basketball'])


User.create([name:"Gavin Startk", address:"St Pete, FL"])
User.create([name:"Foo Bar", address:"Tampa, FL"])
User.create([name:"Jason Perry", address:"St Pete, FL"])
