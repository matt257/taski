class TasksController < ApplicationController
    def index
        @i_var = 3
    end

    def list
        @l_var = ['test', 34]
    end
end
