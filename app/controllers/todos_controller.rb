class TodosController < ApplicationController
	before_action :set_todo, only: [:show, :edit, :update, :destroy]

	def index
	  @todos = Todo.all
	end

	def new
	  @todo = Todo.new
	end

	def show
	end

	def edit
	end

	def create
		@todo = Todo.create(params[todo_params])
	end

	def update
		@todo.save
	end

	def destroy
		@todo.destroy
		redirect_to tags_url
	end

	private
	def todo_params
		params.require(:todo).permit(:item)
	end

	def set_todo
		@todo = Todo.find(params[:id])
	end
end
