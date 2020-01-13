class AddStatusToHabits < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :status, :boolean, default: false
  end
end
