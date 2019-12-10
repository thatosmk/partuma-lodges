class AddNumberOfRoomsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :number_of_rooms, :integer, default: 1
  end
end
