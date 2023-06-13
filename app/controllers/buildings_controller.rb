class BuildingsController < ApplicationController
  def index
    @buildings = Building.all

    @markers = buildings.geocoded.map do |building|
      {
        lat: building.latitude,
        lng: building.longitude
      }
    end
  end

  def new
  end

  def create

  end

  def edit

  end

  def show

  end

  def destroy
  end

end
