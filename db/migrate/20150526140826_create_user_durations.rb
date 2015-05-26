class CreateUserDurations < ActiveRecord::Migration
  def change
    create_table :user_durations do |t|
      t.text :name
      t.date :duration_date
      t.integer :duration

      t.timestamps null: false
    end
  end
end
