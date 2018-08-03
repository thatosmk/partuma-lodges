class AddBookingDaysToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :checkin_day, :string
    add_column :bookings, :checkout_day, :string
  end
end
