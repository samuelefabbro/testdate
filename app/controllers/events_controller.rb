class EventsController < ApplicationController
    def index
        @events = Event.all.order(date: :asc)   
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(form_params)

        @event.save

        redirect_to event_path(@event)
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
        
        @event.update(form_params)

        redirect_to event_path(@event)
    end

    def form_params
        params.require(:event).permit(:title, :date, :time, :price, :expenses, :desctription, :client_id,)
    end


end

