# Ejecutar 'rails db:reset'

require 'faker'
puts
puts "Poblando Mascotas..."

10.times do
    
	pets = Pet.create(
		name: Faker::Creature::Dog.name,
		race: Faker::Creature::Dog.breed,
        typepet: 'perro',
		birthdate: Faker::Date.between(from: '2015-01-01', to: 2.days.ago),
        holder_id: rand(1..10) 
  	)
end

10.times do

	pets = Pet.create(
		name: Faker::Creature::Cat.name,
		race: Faker::Creature::Cat.breed,
        typepet: 'gato',
		birthdate: Faker::Date.between(from: '2015-01-01', to: 30.days.ago),
        holder_id: rand(1..10) 
  	)
end

puts "Mascotas creadas oK..."
puts

