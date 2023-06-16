class BuildingsController < ApplicationController
  before_action :set_building, only: %i[show edit update destroy]
  require 'net/http'
  def index
    @buildings = Building.all

    # @markers = buildings.geocoded.map do |building|
    #   {
    #     lat: building.latitude,
    #     lng: building.longitude
    #   }
    # end

  end

  def show
    url = "https://api.openweathermap.org/data/2.5/weather?lat=#{@building.latitude}&lon=#{@building.longitude}&appid=#{ENV['OPENWEATHER_API_KEY']}"
    uri = URI(url)
    # params = { :api_key => 'your_api_key' }
    # uri.query = URI.encode_www_form(params)
    res = Net::HTTP.get_response(uri)
    @data_weather = JSON.parse(res.body)



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
