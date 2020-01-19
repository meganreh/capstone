class Api::HabitsController < ApplicationController
  def index
    if current_user
      @habits = current_user.habits
    end

    render "index.json.jb"
  end

  def create
    @habit = Habit.new(
      description: params[:description],
      user_id: current_user.id,
    )
    if @habit.save
      render "show.json.jb"
    else
      render json: { errors: @habit.errors.full_messages }, status: 422
    end
  end

  def show
    @habit = Habit.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @habit = Habit.find_by(id: params[:id])
    @habit.description = params[:description] || @habit.description
    # @habit.completed = params[:completed] || @habit.completed
    @habit.completed = params[:completed] != nil ? params[:completed] : @habit.completed
    @habit.completion_number = params[:completion_number] || @habit.completion_number
    if @habit.save
      render "show.json.jb"
    else
      render json: { errors: @habit.errors.full_messages }, status: 422
    end
  end

  def destroy
    @habit = Habit.find_by(id: params[:id])
    @habit.destroy
    render json: { message: "Habit destroyed" }
  end
end
