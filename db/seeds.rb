# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [ 'Delivery','Cleaning','Event Planning','Event Staffing','Personal Assistant','Entertainment','Furniture Assembly','Heavy Lifting','Minor Home Repairs','Moving Help','Organization','Accounting','Arts / Crafts','Automotive','Carpentry & Construction','Computer Help','Cooking / Baking','Data Entry','Decoration','Deep Clean','Electrician','Errands','Graphic Design','Laundry and Ironing','Marketing','Mounting','Office Administration','Packing & Shipping','Painting','Pet Sitting','Photography','Plumbing','Research','Selling Online','Sewing','Shopping','Usability Testing','Videography','Web Design & Development','Wait In Line','Window Cleaning','Writing & Editing','Yard Work & RemovalDeliver' ]
addresses = [
'YURAKUCHO, CHIYODA, TOKYO',
'YURAKUCHO, CHIYODA, TOKYO',
'HITOTSUBASHI, CHIYODA, TOKYO',
'MISAKICHO, CHIYODA, TOKYO',
'IIDABASHI, CHIYODA, TOKYO',
'NIHONBASHIKAKIGARACHO, CHUO, TOKYO',
'TSUKIJI, CHUO, TOKYO',
'NISHIAZABU, MINATO, TOKYO',
'AZABUJUBAN, MINATO, TOKYO',
'AKASAKA , MINATO, TOKYO',
'AKASAKA , MINATO, TOKYO',
'AKASAKA , MINATO, TOKYO',
'AKASAKA , MINATO, TOKYO',
'AKASAKA , MINATO, TOKYO',
'KITAAOYAMA, MINATO, TOKYO',
'UENO, TAITO, TOKYO',
'NISHINIPPORI, ARAKAWA, TOKYO',
'AYASE, ADACHI, TOKYO',
'TOYO, KOTO, TOKYO',
'HANEDA, OTA, TOKYO',
'JIYUGAOKA, MEGURO, TOKYO',
'SHIMOMEGURO, MEGURO, TOKYO',
'SHINJUKU, SHINJUKU, TOKYO',
'SHINJUKU, SHINJUKU, TOKYO',
'NISHISHINJUKU , SHINJUKU, TOKYO',
'NISHISHINJUKU , SHINJUKU, TOKYO',
'NISHISHINJUKU , SHINJUKU, TOKYO',
'NISHISHINJUKU , SHINJUKU, TOKYO',
'TOYAMA, SHINJUKU, TOKYO',
'HYAKUNINCHO, SHINJUKU, TOKYO',
'HYAKUNINCHO, SHINJUKU, TOKYO',
'NISHIKASAI, EDOGAWA, TOKYO',
'HIGASHI, SHIBUYA, TOKYO',
'TAISHIDO, SETAGAYA, TOKYO',
'NISHISHINJUKU , SHINJUKU, TOKYO',
'NISHISHINJUKU , SHINJUKU, TOKYO',
'NISHIWASEDA, SHINJUKU, TOKYO',
'OKUBO, SHINJUKU, TOKYO',
'KITAOTSUKA, TOSHIMA, TOKYO',
'KITAOTSUKA, TOSHIMA, TOKYO',
'KICHIJOJI HONCHO, MUSASHINO, TOKYO',
'MYOJINCHO, HACHIOJI, TOKYO',
'FUJIMI, CHIYODA, TOKYO',
'YAESU, CHUO, TOKYO',
'GINZA, CHUO, TOKYO',
'TORANOMON , MINATO, TOKYO',
'SHINKAWA, CHUO, TOKYO',
'GINZA, CHUO, TOKYO',
'SHITAYA, TAITO, TOKYO',
'UENO, TAITO, TOKYO',
'UENO, TAITO, TOKYO',
'NISHISHINKOIWA, KATSUSHIKA, TOKYO',
'KAMEARI, KATSUSHIKA, TOKYO',
'NISHIKASAI, EDOGAWA, TOKYO',
'NISHIKAMATA, OTA, TOKYO',
'KAMATA, OTA, TOKYO',
'KABUKICHO, SHINJUKU, TOKYO',
'KABUKICHO, SHINJUKU, TOKYO',
'KABUKICHO, SHINJUKU, TOKYO',
'NISHIWASEDA, SHINJUKU, TOKYO',
'OKUBO, SHINJUKU, TOKYO',
'HYAKUNINCHO, SHINJUKU, TOKYO',
'HYAKUNINCHO, SHINJUKU, TOKYO',
'HYAKUNINCHO, SHINJUKU, TOKYO',
'KITAOTSUKA, TOSHIMA, TOKYO',
'KAMIIKEBUKURO, TOSHIMA, TOKYO',
'IKEBUKURO , TOSHIMA, TOKYO'
]



Booking.destroy_all
Service.destroy_all
puts "Cleaning database..."
User.destroy_all

# Generate new users
puts "Creating users..."
30.times do
  User.create!(email: "#{Faker::Name.first_name}@yahoo.com", password: "123123", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

# Generate services for each user
puts "Creating services..."
counter = 0
User.all.each do |user|
  (1..6).to_a.sample.times do
    counter += 1
    base_cat = categories.sample
    service = Service.new(
      name: base_cat,
      category: base_cat,
      description: Faker::Lorem.paragraph(2),
      photo: "https://unsplash.it/200/300?image=#{counter}",
      address: addresses.sample.titleize,
      price: (12..46).to_a.sample
    )
    service.provider = user
    service.save!
  end
end

# Create 1 fresh user account
User.create!(email: "me@yahoo.com", password: "123123")




puts "Finished!"
