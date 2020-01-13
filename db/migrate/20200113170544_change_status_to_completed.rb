class ChangeStatusToCompleted < ActiveRecord::Migration[6.0]
  def change
    rename_column :habits, :status, :completed
  end
end
