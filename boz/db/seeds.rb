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

10.times do

    status = ["Prestamo","Estante"].sample
    fechprestm = Faker::Date.between(from: '2021-01-01', to: Date.today)
    fechdevol = nil
    (fechdevol = nil; fechdevol = fechprestm + rand(1..100)) if status != "Prestamo" 

    libros=Libro.create(
      title: Faker::Book.title,
      author: Faker::Book.author,
      image_url: "https://loremflickr.com/#{rand(50..200)}/#{rand(50..200)}/all",
      descrip: ["CienciaFiccion","Fantasia"].sample,
      status: status,
      fechprestm: fechprestm,
      fechdevol: fechdevol
  )
end
