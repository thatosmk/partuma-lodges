class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :surname
      t.string :cel
      t.text :address
      t.date :dob
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
