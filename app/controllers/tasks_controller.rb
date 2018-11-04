class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  	@task_count = UserTask.where(user_id: current_user).count
  end
end
