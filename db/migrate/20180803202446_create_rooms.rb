class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :description
      t.text :amenities
      t.float :price
      t.integer :booking_id
      t.string :check_in
      t.string :check_out

      t.timestamps
    end
  end
end
