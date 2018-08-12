class AddRsvpToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :rsvp, :integer, default: 0
  end
end
