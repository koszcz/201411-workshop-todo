class TasksController < ApplicationController
	def create
		@list = List.find(params[:list_id])
		@task = @list.tasks.new(permitted_params)
		if @task.save
			redirect_to list_path(@list)
		else
			render "lists/show"
		end
	end

	private

	def permitted_params
		params.require(:task).permit(:name)
	end
end