class EventsController < ApplicationController
    def index
        @events = Event.all.order(date: :asc)   
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(params.require(:event).permit(:title, :date))

        @event.save

        redirect_to root_path
    end

end
