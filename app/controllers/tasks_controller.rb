class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render template: "/tasks/index.html.erb"
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.description = params[:task][:description]
    @task.completion = False

    if @task.save
      redirect_to link_path(@task.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! Link couldn't be saved!"
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end
end
