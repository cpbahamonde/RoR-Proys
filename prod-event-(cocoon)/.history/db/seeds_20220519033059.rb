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

	name = ""
	cost = Faker::Commerce.price * 1000
	price = cost * 2
	
	groups = Group.create(
		name: Faker::Music.band,
        crew: rand(1..10),
		debut_date: rand(10.year).ago,
  	)
end

Faker::Address.community

45.times do

	name = ""
	cost = Faker::Commerce.price * 1000
	price = cost * 2
	
	concerts = Concert.create(
		attendance: rand(1000..10000),,
		duration: Faker::Lorem.sentences(number: 2),
		price: price,
		cost: cost,
		t_schedule: rand(2..6),
		stock: rand(1..10),
		img_url: "https://loremflickr.com/#{rand(50..200)}/#{rand(50..200)}/all"
  	)
end