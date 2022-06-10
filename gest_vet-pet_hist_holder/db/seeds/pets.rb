
require 'faker'

# rnd = Random.rand(1...3)
5.times do
    pets = Pet.create(
        name: Faker::Creature::Dog.unique.name,
        race: Faker::Creature::Dog.breed,
        birthdate: Faker::Date.between(from: '2010-01-01', to: Date.today),
        holder_id: @holders.ids.sample
    )
end