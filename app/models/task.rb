class Task < ApplicationRecord
  belongs_to :user

  def due_date_formatted
    due_date.strftime("%m.%-d.%y")
  end

  def due_date_start
    due_date.strftime("%Y%m%d")
  end
end
