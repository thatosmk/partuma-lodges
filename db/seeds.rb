# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed the venues and the rooms
room   = Room.create(room_name: 'Standard Rooms', description: 'These rooms can accommodate at most 10 guests, There is complimentary breakfast for the duration of your stay.', amenities: 'Air Conditioning, Heating, Dryer, Iron, TV, Parking, First Aid Kit, 1 bath, 1 bed per room', price: 'R500 per night', check_in: '15h00', check_out: '', quantity: 10)
hall   = Room.create(room_name: 'Standard Hall', description: '', amenities: '', price: '', check_in: '', check_out: '', room_type: 'venues', quantity: 1)
garden = Room.create(room_name: 'Gardens', description: '', amenities: '', price: '', check_in: '', check_out: '', room_type: 'venues', quantity: 2)
