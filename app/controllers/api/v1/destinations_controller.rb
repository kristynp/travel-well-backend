class Api::V1::DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]

  def index 
    @destinations = Destination.all
    render json: @destinations
  end

  def show
    render json: @destination
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      render json: @destination, status: :created, location: @destination
    else 
      render json: @destination.errors, status: :unprocessable_entity
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

