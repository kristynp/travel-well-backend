class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

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

  private

  def set_comment 
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :content)
  end
end
