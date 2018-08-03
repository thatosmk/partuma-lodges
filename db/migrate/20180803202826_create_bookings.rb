class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :account_id
      t.integer :adults
      t.integer :children
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end
