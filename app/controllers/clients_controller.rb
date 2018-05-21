class ClientsController < ApplicationController
  before_action :get_client, only: [ :show, :edit, :update, :destroy ]

  def new
    @client = Client.new
  end

  def create
    client = Client.create client_params
    client.save

    redirect_to clients_path
  end

  def index
    @clients = Client.all
  end

  def show
  end

  def edit
  end

  def update
    client.update client_params
    redirect_to client_path params[:id]
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  private
  def client_params
    params.require(:client).permit(:name, :prefix
  end

  def get_client
    @client = Client.find params[:id]
  end
end
