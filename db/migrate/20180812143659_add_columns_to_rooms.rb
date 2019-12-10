class AddColumnsToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :booked, :integer, default: 0
    add_column :rooms, :quantity, :integer, default: 0
  end
end
