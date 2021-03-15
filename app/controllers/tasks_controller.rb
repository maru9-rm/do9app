class TasksController < ApplicationController
    def show
        @task = Task.all
    end

    def new
        @task = current_user.tasks.build
    end
end