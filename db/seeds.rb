# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

airports = Airport.create([{city: 'SFO'}, {city: 'NYC'}, {city: 'ORD'}])
sfo = airports[0]
nyc = airports[1]
ord = airports[2]
flight1 = Flight.create(origin_id: sfo.id, destination_id: nyc.id, departure: Time.new(2015,7,15), duration: 290)
flight2 = Flight.create(origin_id: nyc.id, destination_id: sfo.id, departure: Time.new(2015,7,16), duration: 280)
flight3 = Flight.create(origin_id: sfo.id, destination_id: nyc.id, departure: Time.new(2015,7,20), duration: 287)
flight4 = Flight.create(origin_id: nyc.id, destination_id: sfo.id, departure: Time.new(2015,7,21), duration: 271)



