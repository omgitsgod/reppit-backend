class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.json :workout
      t.integer :user_id
      t.string :date
      t.timestamps
    end
  end
end
