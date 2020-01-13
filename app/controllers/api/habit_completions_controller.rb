class Api::HabitCompletionsController < ApplicationController
  def index
    if current_user
      @habits = current_user.habits.where(status: :true)
    end

    render "index.json.jb"
  end
end
