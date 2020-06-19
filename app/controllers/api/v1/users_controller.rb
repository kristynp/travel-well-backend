class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index 
    @users = User.all
    options = {
      include: [:destinations]
    }
    render json: UserSerializer.new(@users, options)
  end

  def show
    # render json: @user
    # json_string = MovieSerializer.new(movie).serialized_json
    
    user_json = UserSerializer.new(@user).serialized_json
    render json: user_json
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update 
    if @user.update(user_params)
      render json: @user 
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end 

  def destroy 
    @user.destroy
  end



  private

  def set_user 
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password_digest)
  end
end
