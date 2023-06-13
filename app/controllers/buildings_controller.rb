class BuildingsController < ApplicationController
  before_action :set_building, only: [:show, :edit, :update, :destroy]
  def index
    @buildings = Building.all

    # @markers = buildings.geocoded.map do |building|
    #   {
    #     lat: building.latitude,
    #     lng: building.longitude
    #   }
    # end

  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    @building.user = current_user
    if @building.save!
      redirect_to buildings_path, notice: 'Building was successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def show

  end

  def destroy
  end

  private

  def set_building
    @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(:name, :address, :company, :building_type)
  end
end
