class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create

    new_task = Task.new(name: params[:task][:name], details: params[:task][:details] )
    new_task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
     @task = Task.find(params[:id])
     @task.update(tasks_params)
     redirect_to tasks_path
  end

  def destroy
    task_to_delete = Task.find(params[:id])
    task_to_delete.destroy
    redirect_to tasks_path
  end

  private

  def tasks_params
    params.permit(:name, :details)
  end
end
