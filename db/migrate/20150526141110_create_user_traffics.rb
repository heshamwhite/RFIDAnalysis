class CreateUserTraffics < ActiveRecord::Migration
  def change
    create_table :user_traffics do |t|
      t.text :name
      t.integer :arrival_traffic
      t.integer :departure_traffic

      t.timestamps null: false
    end
  end
end
