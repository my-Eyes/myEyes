class PhotosController < ApplicationController
  def create
    photo = Photo.new(url: params[:photoAddress])
    p "***********************address: #{params[:photoAddress]} ******************************"
    if photo.save
      session[:photo_id] = photo.id
      render json: { saved: true, address: params[:photoAddress] }
    else
      render json: { saved: false }
    end

  end
end
