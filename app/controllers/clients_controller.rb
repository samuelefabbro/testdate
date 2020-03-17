class ClientsController < ApplicationController
    def index
        @clients = Client.all.order(name: :asc) 
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(form_params)

        @client.save

        redirect_to client_path(@client)
    end

    def show
        @client = Client.find(params[:id])
    end

    def destroy
       @client = Client.find(params[:id])
       
       @client.destroy

       redirect_to root_path
    end

    def edit
        @client = Client.find(params[:id])
    end

    def update
        @client = Client.find(params[:id])
        
        @client.update(form_params)

        redirect_to client_path(@client)
    end

    def form_params
        params.require(:client).permit(:name, :shortname, :description, :color)
    end
end
