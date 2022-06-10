require 'faker'

3.times do
	holders = Holder.create(
		name: Faker::Name.unique.name,
		phone: Faker::Base.numerify('+56(9) #### ####'),
		address: Faker::Address.full_address,
		email: Faker::Internet.email
  	)
end
@holders = Holder.all
