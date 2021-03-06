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


8.times do
	group_type = ["BoysGroup","GirlsGroup","Band"].sample
    groups = Group.create(
		name: Faker::Music.band,
        q_crew: rand(1..10),
		debut_date: Faker::Date.between(from: '1980-01-01', to: '2020-01-31'),
        group_type: group_type
		 	
  	)
end

20.times do
	concerts = Concert.create(
		attendance: rand(1000..10000),
		duration: rand(1..5),
		place: Faker::Address.community,
		date: Faker::Date.between(from: '2021-01-01', to: Date.today),
		group_id: rand(1..5)
  	)
end

25.times do
	crews = Crew.create(
		name: Faker::Name.name,
		group_id: rand(1..5)
  	)
end


puts "Carga de Datos OK"