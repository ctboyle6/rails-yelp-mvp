# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning old data...'
# delete all restaurants
Restaurant.delete_all
# seed 50 new restaurants
puts 'Adding new restaurants...'
50.times do
  restaurant = Restaurant.create(
    name: Faker::Creature::Bird.plausible_common_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORY.sample
  )
  puts "Restaurant #{restaurant.id} created"
end

puts 'Done!'
