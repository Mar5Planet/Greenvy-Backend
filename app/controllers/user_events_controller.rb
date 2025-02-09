class UserEventsController < ApplicationController
    before_action :set_userEvent, only: [:update, :destroy]
    def index
        userEvents = UserEvent.all 
        render json: userEvents
    end

    def create
        @userEvent = UserEvent.new(userEvents_params)
    
        if @userEvent.save
          render json: @userEvent, status: :created, location: @userEvent
        else
          render json: @userEvent.errors, status: :unprocessable_entity
        end
    end

      def update
        if @userEvent.update(userEvents_params)
          render json: @userEvent
        else
          render json: @userEvent.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @userEvent.destroy
      end

      private 

      def set_userEvent
        @userEvent = UserEvent.find(params[:id])
      end


      def userEvents_params
        params.require(:userEvent).permit(:user_id, :event_id, :status)
      end
end
