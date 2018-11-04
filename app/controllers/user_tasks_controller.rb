class UserTasksController < ApplicationController
	before_action :authenticate_user!
  def create
  	@task = Task.find(params[:task_id])
  	@user_task = UserTask.new(task: @task, user: current_user, completed: true)

  	if @user_task.save
  		redirect_to tasks_path, notice: "Tarea completada"
  	else
  		redirect_to tasks_path, alert: "Tarea No completada"
  	end
  end

  def index
  	@user_tasks = current_user.user_task
  end

  def remove_task
  	@task = Task.find(params[:id])
  	@user_task = @task.user_task.first
  	@user_task.delete
  	#@task.user_task.destroy(@user_task)

  	redirect_to tasks_path, notice: "Tarea NO completada"
  end
end
