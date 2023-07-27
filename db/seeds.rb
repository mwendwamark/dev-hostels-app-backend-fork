# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hostel.create!(room_type: "private room", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1, total_beds: 1, summary: "This is an exclusive room for privacy", address: "Mara Court, Ngong Road", has_tv: true, has_kitchen: true, has_air_conditioner: true, has_internet: true, has_study_room: true, has_meals: false, price: 28500, published_at: Time.zone.now , user_id: 1, latitude: "1.3562° S", longitude: "36.6688° E")