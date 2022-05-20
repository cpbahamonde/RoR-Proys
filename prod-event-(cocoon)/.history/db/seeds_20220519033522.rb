# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Ejecutar 'rails db:reset'

require 'faker'
puts "Poblando Datos..."


5.times do

	groups = Group.create(
		name: Faker::Music.band,
        crew: rand(1..10),
		debut_date: rand(10.year).ago,
        group_type: rand(1..3)
  	)
end

15.times do

	name = ""
	cost = Faker::Commerce.price * 1000
	price = cost * 2
	
	concerts = Concert.create(
		attendance: rand(1000..10000),
		duration: rand(1..5),,
		place: Faker::Address.community,
		date: Faker::Date.between(from: '2020-01-01', to: Date.today),
		group_id: rand(1..5)
  	)
end