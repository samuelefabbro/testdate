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

    def show
        @event = Event.find(params[:id])
    end

    def destroy
       @event = Event.find(params[:id])
       
       @event.destroy

       redirect_to root_path
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        
        @event.update(params.require(:event).permit(:title, :date))

        redirect_to event_path(@event)
    end

end

