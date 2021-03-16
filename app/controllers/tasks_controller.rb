class TasksController < ApplicationController
    def show
        @task = Task.find(params[:id])
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



    private
    def task_params
        params.require(:task).permit(:title, :content, :eyecatch)
    end
end