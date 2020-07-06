class ImagesController < ApplicationController
  def create
    
    # @destination = current_user.destinations.build(destination_params)
    # if @destination.save
    #   render json: DestinationSerializer.new(@destination), status: :created
    # else
    #   error_message = @destination.errors.full_messages.to_sentence
    #   render json: error_message, status: :unprocessable_entity
    # end
  end
  
  def destroy 
    if @image.destroy
      render json: {message: "Image deleted"}, status: :ok
    else
      error_message = {error: "Image not available to delete"}
      render json: error_message, status: :unprocessable_entity
    end
  
end
