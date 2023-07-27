# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

#  data for reviews
reviews_data = [
  { reservation_id: 1, ratings: 5, comments: "Absolutely amazing" },
  { reservation_id: 2, ratings: 4, comments: "Good stay, but room service can be improved." },
  { reservation_id: 3, ratings: 3, comments: "Average accommodation." }
  { reservation_id: 4, ratings: 5, comments: "Loved the decor and great location. A must-stay!"}
]

# Seed the reviews table
reviews_data.each do |review_data|
  Review.create(review_data)
end

