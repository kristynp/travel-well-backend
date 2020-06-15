class Api::V1::CdcInfosController < ApplicationController
  before_action :set_cdc_info, only: [:show, :update, :destroy]

  def index 
    @cdc_infos = CdcInfo.all
    render json: @cdc_infos
  end

  def show
    render json: @cdc_info
  end

  def create
    @cdc_info = CdcInfo.new(cdc_info_params)
    if @cdc_info.save
      render json: @cdc_info, status: :created, location: @cdc_info
    else 
      render json: @cdc_info.errors, status: :unprocessable_entity
    end
  end

  def update 
    if @cdc_info.update(cdc_info_params)
      render json: @cdc_info 
    else 
      render json: @cdc_info.errors, status: :unprocessable_entity
    end
  end 

  def destroy 
    @cdc_info.destroy
  end



  private

  def set_cdc_info 
    @cdc_info = CdcInfo.find(params[:id])
  end

  def cdc_params
    params.require(:cdc_info).permit(:vaccinations, :destination_id, :advisories, :id, :recommendations)
  end
end