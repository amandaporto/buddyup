# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


mike = User.create(email:"hello@wannateamup.com",street:"306 Central Ave", name:"Mike Smith", zip:"33701", image: "http://cdn.morguefile.com/imageData/public/files/g/GaborfromHungary/07/l/1436093411itiqp.jpg")
mike.activities.create([sport: "Biking", skill_level: "Professional"])

jason = User.create(email:"hello@wannateamup.com",street:"7940 Citrus Garden Dr",name:"Jason McKane", zip:"33625", image: "http://cdn.morguefile.com/imageData/public/files/s/Sgarton/09/l/1379159272gfy4g.jpg")
jason.activities.create([sport: "Football", skill_level: "Advanced"])
jason.activities.create([sport: "Soccer", skill_level: "Beginner"])

john = User.create(email:"hello@wannateamup.com",street:"2168 Druid Rd",name:"Johnny Castello", zip:" 33764", image: "http://cdn.morguefile.com/imageData/public/files/l/lisasolonynko/preview/fldr_2008_11_03/file0001747357091.jpg")
john.activities.create([sport: "Volleyball", skill_level: "Intermediate"])
john.activities.create([sport: "Soccer", skill_level: "Advanced"])

tyler = User.create(email:"hello@wannateamup.com",street:"1702 W Cleveland St",name:"Tyler Fisher", zip:"33606", image: "http://cdn.morguefile.com/imageData/public/files/p/PercyPants/05/l/1432568874hhlkr.jpg")
tyler.activities.create([sport: "Basketball", skill_level: "Intermediate"])

sabrina = User.create(email:"hello@wannateamup.com",street:"502 S Fremont Ave",name:"Sabrina Campbell", zip:"33606", image: "http://cdn.morguefile.com/imageData/public/files/c/cherylholt/08/l/1408773216lq95t.jpg")
sabrina.activities.create([sport: "Baseball", skill_level: "Intermediate"])
sabrina.activities.create([sport: "Tennis", skill_level: "Beginner"])

# Make google happy that we aren't geocoding too fast
sleep 5

natalie = User.create(email:"hello@wannateamup.com",street:"800 Harbour Post Dr",name:"Natalie Morrison", zip:"33602", image: "http://cdn.morguefile.com/imageData/public/files/p/PercyPants/07/l/1436134161irez3.jpg")
natalie.activities.create([sport: "Volleyball", skill_level: "Advanced"])
natalie.activities.create([sport: "Football", skill_level: "Intermediate"])

vicky = User.create(email:"hello@wannateamup.com",street:"5150 Net Dr",name:"Vicky Hart", zip:"33634", image: "http://cdn.morguefile.com/imageData/public/files/t/taylorschlades/preview/fldr_2009_06_23/file1141245784376.jpg")
vicky.activities.create([sport: "Volleyball", skill_level: "Intermediate"])
vicky.activities.create([sport: "Basketball", skill_level: "Intermediate"])
vicky.activities.create([sport: "Soccer", skill_level: "Beginner"])

jessica = User.create(email:"hello@wannateamup.com",street:"11258 Countryway Blvd",name:"Jessica Campbell", zip:"33626", image: "http://cdn.morguefile.com/imageData/public/files/k/Karpati%20Gabor/05/l/13683880067ge61.jpg")
jessica.activities.create([sport: "Baseball", skill_level: "Intermediate"])
jessica.activities.create([sport: "Basketball", skill_level: "Intermediate"])

alex = User.create(email:"hello@wannateamup.com",street:"235 3rd Ave N",name:"Alex Greene", zip:"33606", image: "http://cdn.morguefile.com/imageData/public/files/j/JayPowell/10/l/1413950472iovzj.jpg")
alex.activities.create([sport: "Football", skill_level: "Advanced"])
alex.activities.create([sport: "Biking", skill_level: "Intermediate"])

sam = User.create(email:"hello@wannateamup.com",street:"23700 Viento Drive",name:"Sam Payne", zip:"34639", image: "http://cdn.morguefile.com/imageData/public/files/t/taylorschlades/preview/fldr_2009_06_23/file2611245784846.jpg")
sam.activities.create([sport: "Baseball", skill_level: "Advanced"])
sam.activities.create([sport: "Biking", skill_level: "Intermediate"])
sam.activities.create([sport: "Soccer", skill_level: "Beginner"])
