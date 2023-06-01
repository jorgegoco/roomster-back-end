# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([
  {name: 'Admin', email: 'admin@gmail.com', password: ENV['USER_PASSWORD'], role: 'admin'}
])

Room.create([
  {name: 'Room 1', description: 'Guests can have access to the common areas of this lovely apartment such as the roomy living area with a TV, fully equipped kitchen, and rooftop with views of Lagos Creek. It has a large garden where you can enjoy stunning nature views. The private room is air-conditioned and spacious, ensuring restful nights throughout your stay. It also has an en suite bathroom with a sink, a toilet, and an enclosed shower area. Other amazing amenities include WiFi, room-darkening shades, and free parking', photo: 'https://a0.muscache.com/im/pictures/f04c2377-9bbf-4404-911e-2d85e877f40f.jpg?im_w=720', city: 'Lagos', price: 99},
  {name: 'Room 2', description: "This unique place has a style of it's own with great ambiance, located in a serene and secured estate, and offers convenient access to all parts of Abuja and the areas surrounding it", photo: 'https://a0.muscache.com/im/pictures/miso/Hosting-787382197336417443/original/f618b3bb-630c-4882-9653-a4e9048e2842.jpeg?im_w=1200', city: 'Abuja', price: 79},
  {name: 'Room 3', description: 'Beautiful, classy & well ventilated premium serviced apartments are available for short let in a serene and secure environment just 3 Minutes walk to the University of Ibadan.
    ', photo: 'https://a0.muscache.com/im/pictures/miso/Hosting-689389494163204452/original/3dfc1a74-25dd-47bf-900a-095cf335f1e9.jpeg?im_w=960', city: 'Ibadan', price: 42},
  {name: 'Room 4', description: 'A space for your peace, comfort and quiet time with top notch modern facilities and service to ensure you never miss home.Our smart studio apartment is located in a very secured estate at the most comfortable, peaceful and beautiful neighborhood in Port-Harcourt city: Trans-amadi', photo: 'https://a0.muscache.com/im/pictures/95a64958-9c08-49de-9519-af9924e15f61.jpg?im_w=960', city: 'Port-Harcourt', price: 26},
  {name: 'Room 5', description: 'Located in New Haven Extension ,5minutes drive from the Enugu Airport . This Apartment comes With Superfast Wifi and 24x7 Security and Electricity provides accommodation with Summer House.
    The well air-conditioned apartment consists of 4Bedroom(1Duluxe Bedroom and 3 Master bedrooms), a living room, dining, Snooker board, a fully equipped kitchen with a fridge , an oven and microwave, 4 bathrooms, shower and free toiletries. Towels and bed linen are available in the apartment', photo: 'https://a0.muscache.com/im/pictures/miso/Hosting-796287639907279471/original/6c04b81f-033f-45d8-94a5-52e8b8d47abb.jpeg?im_w=1200', city: 'Enugu', price: 121},
])
