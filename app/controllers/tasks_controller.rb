class TasksController < ApplicationController
    before_action :authenticate_user!
    def show
        @task = Task.find(params[:id])
        @comments = current_task.comments.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to task_path(@task), notice: 'Saved in successfully'
        else
            flash.now[:error] = 'Failed to save'
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to root_path
        else
            render :edit
        end
    end







    private
    def task_params
        params.require(:task).permit(:title, :content, :eyecatch)
    end
end