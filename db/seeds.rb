# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = ['cleaning', 'fitness', 'design', 'technical', 'making some sort of fort', 'excellence', 'justified violence', 'cooking', 'gardening' ]

# Booking.destroy_all
# Service.destroy_all
puts "Cleaning database..."
User.destroy_all

# Generate new users
puts "Creating users..."
50.times do
  User.create!(email: "#{Faker::Name.first_name}@yahoo.com", password: "123123")
end

# Generate services for each user
puts "Creating services..."
User.all.each do |user|
  service = Service.new(
    name: Faker::Company.bs,
    category: categories.sample,
    description: Faker::ChuckNorris.fact,
    photo: "https://lorempixel.com/400/200/business",
    price: (5..100).to_a.sample
  )
  service.provider = user
  service.save!
end

puts "Finished!"
