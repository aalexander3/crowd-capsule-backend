class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: {cities: @locations.map{|loc| LocationSerializer.new(loc)}, highestCount: Location.highestCount}
  end
end
