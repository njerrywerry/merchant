class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :county
      t.string :postalcode
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
