class HabitCompletion < ApplicationRecord
  belongs_to :habit
  belongs_to :user
end
