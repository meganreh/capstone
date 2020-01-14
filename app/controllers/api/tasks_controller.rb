class Api::TasksController < ApplicationController
  def index
    if current_user
      @tasks = current_user.tasks
    end
    render "index.json.jb"
  end

  def create
    @task = Task.new(
      description: params[:description],
      due_date: params[:due_date],
      status: params[:status],
      user_id: current_user.id,
    )
    if @task.save
      render "show.json.jb"
    else
      render json: { errors: @task.errors.full_messages }, status: 422
    end
  end

  def show
    @task = Task.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.description = params[:description] || @task.description
    @task.status = params[:status] || @task.status
    if @task.save
      render "show.json.jb"
    else
      render json: { errors: @task.errors.full_messages }, status: 422
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    render json: { message: "Task destroyed" }
  end
end
