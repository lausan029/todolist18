class Task < ApplicationRecord
	has_many :user_task
	has_many :users, through: :user_task

	def done_list?(params)
		task = Task.find(params[:id])
		user_task = task.user_task.first
		if user_task.nil?
			return false
		else
  		return true
  	end
  end
end
