class LogsController < ApplicationController
    def create
        food = Food.find params[:food_id]
        Log.create_new_log food, @current_user, log_params
        redirect_to food
    end

    def destroy
        @food = Food.find params[:food_id]
        @log = @food.logs.find params[:id]
        @log.destroy
        redirect_to food_path(@food)
    end

    private
    def log_params
        params.require(:log).permit(:date, :description, :tag_ids)
    end
end