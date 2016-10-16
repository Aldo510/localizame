class ApiController < ApplicationController

  protect_from_forgery :except => [:get_locations, :create_location]

  #API


  def create_location
  end

  def get_locations
    @locations = Location.all

    render status: 200,
      json: {
        success: true,
        locations: @locations
      }
  end

  # def update_station
  #   if params && params[:id]
  #     @station = Station.find(params[:id])
  #     @station.gas = params[:gas]
  #     @station.message = params[:message]
  #     @station.increment!(:count)
  #     if @station.save
  #       flash[:success] = 'Tu gasolinera ha sido actualizada'
  #       render status: 200,
  #         json: {
  #           success: true,
  #           data: "Station Updated"
  #         }
  #     else
  #       render status: 401,
  #         json: {
  #           success: false,
  #           data: "Station Update Failed, Unauthorized"
  #         }
  #     end
  #   else
  #     render status: 404,
  #       json: {
  #         success: false,
  #         data: "Station Update Failed, station not found"
  #       }
  #   end
  # end


  # private
  # def update_station_params
  #   # params.require(:station).permit(:gas, :message, :count)
  # end

end
