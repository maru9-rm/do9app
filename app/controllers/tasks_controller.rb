class TasksController < ApplicationController
    def show
        @task = Task.all
    end

    def new
        @task = current_user.tasks.build
    end

    def create
        @task = current_user.tasks.build(task_params)
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