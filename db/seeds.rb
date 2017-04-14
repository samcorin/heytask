# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [ 'Delivery','Cleaning','Event Planning','Event Staffing','Personal Assistant','Entertainment','Furniture Assembly','Heavy Lifting','Minor Home Repairs','Moving Help','Organization','Accounting','Arts / Crafts','Automotive','Carpentry & Construction','Computer Help','Cooking / Baking','Data Entry','Decoration','Deep Clean','Electrician','Errands','Graphic Design','Laundry and Ironing','Marketing','Mounting','Office Administration','Packing & Shipping','Painting','Pet Sitting','Photography','Plumbing','Research','Selling Online','Sewing','Shopping','Usability Testing','Videography','Web Design & Development','Wait In Line','Window Cleaning','Writing & Editing','Yard Work & RemovalDeliver' ]
addresses = ['4-1-14 MINAMICHO, NISHITOKYO, TOKYO','2-7-1 YURAKUCHO, CHIYODA, TOKYO','1-6-3 YURAKUCHO, CHIYODA, TOKYO','2-6-2 HITOTSUBASHI, CHIYODA, TOKYO','3-3 KANDANERIBEICHO, CHIYODA, TOKYO','2-2 KANDAJINBOCHO, CHIYODA, TOKYO','2-1-18 MISAKICHO, CHIYODA, TOKYO','3-10-9 IIDABASHI, CHIYODA, TOKYO','2-4 NIHONBASHIKODENMACHO, CHUO, TOKYO','1-38-9 NIHONBASHIKAKIGARACHO, CHUO, TOKYO','7-8-10 TSUKIJI, CHUO, TOKYO','3-1-22 NISHIAZABU, MINATO, TOKYO','2-20-7 AZABUJUBAN, MINATO, TOKYO','5-4-8 AKASAKA , MINATO, TOKYO','6-14-15 AKASAKA , MINATO, TOKYO','2-13-1 AKASAKA , MINATO, TOKYO','9-7-2 AKASAKA , MINATO, TOKYO','5-3-1 AKASAKA , MINATO, TOKYO','3-2-5 KITAAOYAMA, MINATO, TOKYO','6-3-15 UENO, TAITO, TOKYO','1-2-6 NISHINIPPORI, ARAKAWA, TOKYO','1-39-11 AYASE, ADACHI, TOKYO','3-27-18 TOYO, KOTO, TOKYO','4-6-11 HANEDA, OTA, TOKYO','1-16-14 JIYUGAOKA, MEGURO, TOKYO','1-3-1 SHIMOMEGURO, MEGURO, TOKYO','3-12 YOTSUYA, SHINJUKU, TOKYO','22 AIZUMICHO, SHINJUKU, TOKYO','5-11-2 SHINJUKU, SHINJUKU, TOKYO','1-28-10 SHINJUKU, SHINJUKU, TOKYO','8-16-1 NISHISHINJUKU , SHINJUKU, TOKYO','3-2-4 NISHISHINJUKU , SHINJUKU, TOKYO','6-26-12 NISHISHINJUKU , SHINJUKU, TOKYO','7-21-3 NISHISHINJUKU , SHINJUKU, TOKYO','521 WASEDA TSURUMAKICHO, SHINJUKU, TOKYO','31-8 WAKAMATSUCHO, SHINJUKU, TOKYO','131-1 YARAICHO, SHINJUKU, TOKYO','11 IWATOCHO, SHINJUKU, TOKYO','28 TANSUMACHI, SHINJUKU, TOKYO','1-24-1 TOYAMA, SHINJUKU, TOKYO','2-21-3 HYAKUNINCHO, SHINJUKU, TOKYO','2-8-1 HYAKUNINCHO, SHINJUKU, TOKYO','3-12-11 INOGASHIRA, MITAKA, TOKYO','2-27-8 SHIMORENJAKU, MITAKA, TOKYO','3-15-7 NISHIKASAI, EDOGAWA, TOKYO','1-25-2 HIGASHI, SHIBUYA, TOKYO','26-1 SAKURAGAOKACHO, SHIBUYA, TOKYO','4-22-6 TAISHIDO, SETAGAYA, TOKYO','2-6 SAMONCHO, SHINJUKU, TOKYO','1-7-2 NISHISHINJUKU , SHINJUKU, TOKYO','7-10-17 NISHISHINJUKU , SHINJUKU, TOKYO','1-9-21 NISHIWASEDA, SHINJUKU, TOKYO','1-2-17 OKUBO, SHINJUKU, TOKYO','2-1-1 KITAOTSUKA, TOSHIMA, TOKYO','2-19-7 KITAOTSUKA, TOSHIMA, TOKYO','4-3-17 HIGASHIOIZUMI, NERIMA, TOKYO','1-8-5 KICHIJOJI HONCHO, MUSASHINO, TOKYO','3-1-10 NISHIKICHO, TACHIKAWA, TOKYO','2-26-9 MYOJINCHO, HACHIOJI, TOKYO','3-3-28 HARAMACHIDA, MACHIDA, TOKYO','781-1 NAGA, FUSSA, FUSSA, TOKYO','2-11 KANDASAKUMACHO, CHIYODA, TOKYO','1-3-3 FUJIMI, CHIYODA, TOKYO','2-7-7 YAESU, CHUO, TOKYO','5-4-3 GINZA, CHUO, TOKYO','4-1-28 TORANOMON , MINATO, TOKYO','MINAMI 1 GO, YAESU CHIKAGAI 2-1 YAESU, CHUO, TOKYO','2-12-8 SHINKAWA, CHUO, TOKYO','3-15-10 GINZA, CHUO, TOKYO','1-13-11 SHITAYA, TAITO, TOKYO','2-1-9 UENO, TAITO, TOKYO','2-11-10 UENO, TAITO, TOKYO','1-5-1 NISHISHINKOIWA, KATSUSHIKA, TOKYO','3-27-31 KAMEARI, KATSUSHIKA, TOKYO','6-12-1 NISHIKASAI, EDOGAWA, TOKYO','8-1-7 NISHIKAMATA, OTA, TOKYO','5-20-10 KAMATA, OTA, TOKYO','1-26-6 KABUKICHO, SHINJUKU, TOKYO','1-2-13 KABUKICHO, SHINJUKU, TOKYO','1-17-2 KABUKICHO, SHINJUKU, TOKYO','3-15-3 NISHIWASEDA, SHINJUKU, TOKYO','2-2-6 OKUBO, SHINJUKU, TOKYO','1-15-21 HYAKUNINCHO, SHINJUKU, TOKYO','1-6-18 HYAKUNINCHO, SHINJUKU, TOKYO','1-23-24 HYAKUNINCHO, SHINJUKU, TOKYO','3-32-3 KITAOTSUKA, TOSHIMA, TOKYO','1-39-10 KAMIIKEBUKURO, TOSHIMA, TOKYO','2-6-1 IKEBUKURO , TOSHIMA, TOKYO']

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
User.all.each do |user|
  base_cat = categories.sample

  service = Service.new(
    name: base_cat,
    category: base_cat,
    description: Faker::ChuckNorris.fact,
    photo: "https://lorempixel.com/400/200/business",
    address: addresses.sample.titleize,
    price: (12..46).to_a.sample
  )
  service.provider = user
  service.save!
end

# Create 1 fresh user account
User.create!(email: "me@yahoo.com", password: "123123")

puts "Finished!"
