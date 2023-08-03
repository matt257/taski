# tasks controller 
class TasksController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if user_signed_in?
      @tasks = current_user.tasks
    else
      @tasks = Task.new
    end
  end

  def show
    if user_signed_in?
      @task = current_user.tasks.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def new
    if user_signed_in?
      @task = current_user.tasks.new
    else
      redirect_to root_path
    end
  end

  def create
    if user_signed_in?
      @task = current_user.tasks.new(task_params)
      if @task.save
        redirect_to @task, notice: 'Task was successfully created.'
      else
        render :new
      end
    else
      redirect_to root_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :priority, :tube)
  end
end
