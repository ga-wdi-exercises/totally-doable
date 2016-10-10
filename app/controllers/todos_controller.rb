class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
  def show
    @todo = Todo.find(params[:id])
  end
  def new
    @todo = Todo.new
  end
  def create
    @todo = Todo.create(todos_params)
    redirect_to todos_path
  end
  def edit
    @todo = Todo.find(params[:id])
  end
  def update
    @todo = Todo.find(params[:id])
    @todo.update(todos_params)
    redirect_to todos_path
  end
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end
  private
  def todos_params
    params.require(:todo).permit(:text, :completed)
  end
end
