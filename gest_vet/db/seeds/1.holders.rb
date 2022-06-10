# Ejecutar 'rails db:reset'

require 'faker'
puts
puts "Poblando Dueños..."

10.times do
	holders = Holder.create(
		name: Faker::Name.unique.name,
        phone: Faker::PhoneNumber.cell_phone,
		address: Faker::Address.full_address,
		email: Faker::Internet.email,        
  	)
end

@holders = Holder.all

puts "Dueños creados oK..."
puts

