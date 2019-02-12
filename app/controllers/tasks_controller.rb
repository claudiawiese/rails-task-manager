class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    task_id
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(
      task_params
      )
    task.save
    redirect_to tasks_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def task_id
    @task = Task.find(params[:id])
  end


  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
