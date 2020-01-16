class Task < ApplicationRecord
  belongs_to :user

  def due_date_formatted
    due_date.strftime("%m.%-d.%y")
  end
end
