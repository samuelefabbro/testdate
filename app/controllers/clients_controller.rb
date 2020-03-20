class ClientsController < ApplicationController
    def index
        @clients = Client.all.order(name: :asc) 
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(form_params)

        if @client.save
            redirect_to clients_path
        else
            render "new"
        end

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
        
        if @client.update(form_params)

            redirect_to clients_path
        
        else    
            render "edit"
        end
        

        
    end

    def form_params
        params.require(:client).permit(:name, :shortname, :description, :color)
    end
end
