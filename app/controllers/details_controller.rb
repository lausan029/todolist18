class DetailsController < ApplicationController
  def index
  	@task_detail = Task.find(params[:format])
  	ranking
  end

  def ranking
  	@task_ranking = Task.find(params[:format])
  	@task_ranking = @task_ranking.users.limit(5)
  end
end
