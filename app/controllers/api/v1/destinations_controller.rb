class Api::V1::DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]

  def index 
    if logged_in?
      @destinations = current_user.destinations
      render json: DestinationSerializer.new(@destinations)
    else
      render json: {
        error: "You must be logged in to view your destinations"
      }
    end
  end

  def show
    render json: @destination
  end

  def create
    @destination = current_user.destinations.build(destination_params)
    if @destination.save
      render json: DestinationSerializer.new(@destination), status: :created
    else
      error_message = @destination.errors.full_messages.to_sentence
      render json: error_message, status: :unprocessable_entity
    end
  end

  def update
    if @destination.update(destination_params)
      render json: DestinationSerializer.new(@destination), status: :ok
    else
      error_message = @destination.errors.full_messages.to_sentence
      render json: error_message, status: :unprocessable_entity
    end
  end 

  def destroy 
    if @destination.destroy
      render json: {message: "Destination deleted"}, status: :ok
    else
      error_message = {error: "Destination not available to delete"}
      render json: error_message, status: :unprocessable_entity
    end
  end



  private

  def set_destination 
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name, :user_id, :notes)
  end
end

