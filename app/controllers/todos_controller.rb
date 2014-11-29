class TodosController < ApplicationController
	before_action :set_todo, only: [:show, :edit, :update, :destroy]

	def index
	  @todos = Todo.all
	  @tags = Tag.find(1)
	end

	def new
	  @todo = Todo.new
	end

	def show
		@tags = Tag.find(params[:id])
	end

	def edit
	end

	def create
		@todo = Todo.create(params[todo_params])
		respond_to do |format|
	      if @todo.save
	        format.html { redirect_to @todo, notice: 'todo was successfully created.' }
	        format.json { render :show, status: :created, location: @todo }
	      else
	        format.html { render :new }
	        format.json { render json: @todo.errors, status: :unprocessable_entity }
	      end
    end
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
