class CreateDayTraffics < ActiveRecord::Migration
  def change
    create_table :day_traffics do |t|
      t.date :traffic_date
      t.integer :arrival_traffic
      t.integer :departure_traffic

      t.timestamps null: false
    end
  end
end
