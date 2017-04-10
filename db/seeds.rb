# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Generate new users
# 10.times do
#   User.create(email: "#{Faker::Name.first_name}@yahoo.com", password: "123123")
# end

# Generate services for each user
User.all.each do |user|
  service = Service.new(
    name: Faker::Educator.course,
    category: Faker::Company.profession,
    description: Faker::ChuckNorris.fact,
    price: 42
  )
  service.user = user
  service.save
end
