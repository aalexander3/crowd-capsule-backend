class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: {locations: @locations.map{|loc| LocationSerializer.new(loc)}, highestCount: Location.highestCount}
  end
end
