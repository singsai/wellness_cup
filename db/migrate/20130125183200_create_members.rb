class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :location_id
      t.string :country_code
      t.string :phone_number
      t.integer :team_id
      t.string :shib
      t.boolean :captain,           :default => false

      t.timestamps
    end
  end
end
