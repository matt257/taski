class TubesController < ApplicationController
    skip_before_action :authenticate_user!

    def index
      if user_signed_in?
        @tubes = current_user.tubes
      else
        @tubes = Tube.new
      end
    end
  
    def show
      if user_signed_in?
        @tube = current_user.tubes.find(params[:id])
      else
        redirect_to root_path
      end
    end
  
    def new
      if user_signed_in?
        @tube = current_user.tubes.new
      else
        redirect_to root_path
      end
    end
  
    def create
      if user_signed_in?
        @tube = current_user.tubes.new(tube_params)
        if @tube.save
          redirect_to @tube, notice: 'Tube was successfully created.'
        else
          render :new
        end
      else
        redirect_to root_path
      end
    end
  
    private
  
    def tube_params
      params.require(:tube).permit(:name, :description, :priority)
    end
end
