class DeleteStatusFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :status, :string
  end
end
