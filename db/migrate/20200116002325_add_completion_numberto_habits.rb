class AddCompletionNumbertoHabits < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :completion_number, :integer, default: 0
  end
end
