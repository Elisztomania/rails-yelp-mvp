# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: "Dishoom", address: '7 Boundary St, London E2 7JE', phone_number: '+44 20 7420 9320', category: 'french' }
pizza_east = { name: "Pizza East", address: '56A Shoreditch High St, London E1 6PQ', phone_number: '+44 20 7729 1888', category: 'italian' }
hakata_ramen = { name: "Hakata Ramen", address: '8 Rue du Garet, 69001 Lyon', phone_number: '09 82 34 87 56', category: 'japanese' }
frite_alors = { name: "Frite Alors", address: '20 Rue Terme, 69001 Lyon', phone_number: '04 78 58 61 73', category: 'belgian' }
mont_berliner = { name: "Mont Berliner", address: '22 Rue Sainte-Catherine, 69001 Lyon', phone_number: '04 78 27 39 63', category: 'chinese' }

[dishoom, pizza_east, hakata_ramen, frite_alors, mont_berliner].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
