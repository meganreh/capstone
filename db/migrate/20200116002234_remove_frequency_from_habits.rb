class RemoveFrequencyFromHabits < ActiveRecord::Migration[6.0]
  def change
    remove_column :habits, :frequency, :string
  end
end
