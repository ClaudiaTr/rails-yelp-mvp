# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database ...'
Restaurant.destroy_all
Review.destroy_all

puts 'Datebase clean'
puts 'Creating restaurants with reviews...'

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Faker::Restaurant.type
  )
  puts "Created restaurant #{restaurant.name}"
  puts "Creating reviews..."
end

puts 'All restaurants successfully created'
