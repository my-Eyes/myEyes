class LocationsController < ApplicationController
  def create
    location = Location.new(
                            neighborhood: params[:neighborhood],
                            city: params[:city],
                            state: params[:state],
                            latitude: params[:latitude],
                            longitude: params[:longitude],
                            address: params[:address]
      )

    if location.save
      session[:location_id] = location.id
      render json: { saved: true }
    else
      render json: { saved: false, errors: location.errors }
    end
  end
end