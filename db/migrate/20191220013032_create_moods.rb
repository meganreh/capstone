class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
