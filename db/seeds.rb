# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Artist.destroy_all
Genre.destroy_all

10.times{ Artist.create(name: Faker::Name.name, bio: Faker::Quote.most_interesting_man_in_the_world)}


10.times{ Genre.create(name: Faker::Hipster.word)}

Song.create(name: "Bye, Bye, Bye", artist_id: 30, genre_id: 4)
