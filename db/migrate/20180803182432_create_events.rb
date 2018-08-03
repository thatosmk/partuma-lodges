class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :event_date
      t.string :event_time

      t.timestamps
    end
  end
end
