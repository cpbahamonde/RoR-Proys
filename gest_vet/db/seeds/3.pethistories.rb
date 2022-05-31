
# Ejecutar 'rails db:reset'

require 'faker'
puts
puts "Poblando Consultas..."

30.times do

	pethistories = Pethistory.create(
		weight: rand(5..40) ,
		height: rand(5..30) ,
		created_at: Faker::Date.between(from: '2022-01-01', to: 1.days.ago),
        holder_id: rand(1..10), 
        description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
        pet_id: rand(1..20) 
  	)
end

puts "Consultas creadas oK..."
puts


