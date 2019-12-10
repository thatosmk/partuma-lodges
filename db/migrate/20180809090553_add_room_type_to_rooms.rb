class AddRoomTypeToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :room_type, :string, default: "accommodation"
  end
end
