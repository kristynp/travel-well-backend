class Api::V1::ImagesController < ApplicationController
  # before_action :set_image, only: [:show, :destroy]

  def create
    @destination = Destination.find(params[:destination_id])
    @image = @destination.images.build(image_params)
    if @image.save
      render json: ImageSerializer.new(@image), status: :created
    else
      error_message = @image.errors.full_messages.to_sentence
      render json: error_message, status: :unprocessable_entity
    end
  end
  
  def destroy 
    if @image.destroy
      render json: {message: "Image deleted"}, status: :ok
    else
      error_message = {error: "Image not available to delete"}
      render json: error_message, status: :unprocessable_entity
    end
  end

    private

    def set_image 
      @image = Image.find(params[:id])
    end
  
    def image_params
      params.require(:image).permit(:url, :destination_id, :description, :alt_description, :external_id)
    end  
  
end
