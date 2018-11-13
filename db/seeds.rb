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
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '555-61234500',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '111-61234500',
    category:     'italian'
  },
  {
    name:         'Manneke Pis',
    address:      '71 Bowery St, London E2 9UR',
    phone_number: '333-61234500',
    category:     'belgian'
  },
  {
    name:         'Shibuya',
    address:      '90A Oxford St, London E1 1PL',
    phone_number: '888-61234500',
    category:     'japanese'
  },
  {
    name:         'Le Wagon Culinaire',
    address:      '10 Bootcamp Rd, London E4 CU2',
    phone_number: '777-61234500',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
