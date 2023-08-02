class TasksController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home]
    
    def home
    end

    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    private

        def task_params
            params.require(:task).permit(:name, :description, :priority, :tube_number)
        end
end
