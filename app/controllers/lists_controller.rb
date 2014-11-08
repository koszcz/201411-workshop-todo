class ListsController < ApplicationController

	def index
		@lists = List.all
	end

	def new
		@list = List.new
	end

	def create
		@list = List.new(permitted_params)
		if @list.save
			redirect_to lists_path
		else
			render :new
		end
	end

	def show
		@list = List.find(params[:id])
		@task = Task.new
	end

	def edit
		@list = List.find(params[:id])
	end

	def update
		@list = List.find(params[:id])
		if @list.update(permitted_params)
			redirect_to list_path(@list)
		else
			render :edit
		end
	end

	def destroy
		List.find(params[:id]).destroy
		redirect_to lists_path
	end

	private

	def permitted_params
		params.require(:list).permit(:name)
	end

end