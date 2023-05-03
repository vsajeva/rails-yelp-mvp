# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating seeds"

restaurant_one = Restaurant.create(name: "Royal China Club", address: "40-42 Baker St, London W1U 7AJ", phone_number: "020 7486 3898", category: "chinese")
restaurant_two = Restaurant.create(name: "Artusi", address: "161 Bellenden Rd, London SE15 4DH", phone_number: "020 3302 8200", category: "italian")
restaurant_three = Restaurant.create(name: "Zuma London", address: "5 Raphael St, London SW7 1DL", phone_number: "020 7584 1010", category: "japanese")
restaurant_four = Restaurant.create(name: "Otto's French Restaurant London", address: "182 Grays Inn Rd, London WC1X 8EW", phone_number: "020 7713 0107", category: "french")
restaurant_five = Restaurant.create(name: "Munich Cricket Club", address: "West India Quay, 12 Hertsmere Rd, London E14 4AE", phone_number: "020 7093 1275", category: "belgian")

[restaurant_one, restaurant_two, restaurant_three, restaurant_four, restaurant_five].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Seeds created!"
