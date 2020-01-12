class CreateHabitCompletions < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_completions do |t|
      t.integer :habit_id
      t.integer :user_id

      t.timestamps
    end
  end
end
