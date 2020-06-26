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
    @destination = Destination.new(destination_params)
    if @destination.save
      render json: @destination, status: :created
    else
      error_message = @destination.errors.full_messages.to_sentence
      render json: error_message, status: :unprocessable_entity
    end
  end

  def update 
    if @destination.update(user_params)
      render json: @destination 
    else 
      render json: @destination.errors, status: :unprocessable_entity
    end
  end 

  def destroy 
    @destination.destroy
  end



  private

  def set_destination 
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name, :user_id, :notes)
  end
end

