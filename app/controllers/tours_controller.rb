class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    # p '************************************'
    # p params
    # p params[:tour]
    # p '************************************'
    @tour = Tour.new(name: params[:tour][:name], description: params[:tour][:description])

    if @tour.save
      redirect_to "/users/#{current_user.id}/tours/#{@tour.id}/steps/new"
    else
      render new
    end
  end
end
