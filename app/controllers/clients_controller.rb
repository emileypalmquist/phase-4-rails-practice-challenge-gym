class ClientsController < ApplicationController

  def show
    client = Client.find(params[:id])
    # include only include associations
    # methods can be any instance methods
    render json: client, methods: [:total_memberships_price, :memberships], except: [:created_at, :updated_at]
  end

  def update
    client = Client.find(params[:id])
    client.update!(client_params)
    render json: client, status: :accepted
  end

  private

  def client_params
    params.permit(:name, :age)
  end

end
