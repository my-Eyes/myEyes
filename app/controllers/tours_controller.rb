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
    @tour = Tour.new(name: params[:tour][:name], local_id: current_user.id, description: params[:tour][:description])

    if @tour.save
      redirect_to "/users/#{current_user.id}/tours/#{@tour.id}/steps/new"
    else
      render new
    end
  end

  def show
    @tour = Tour.find(params[:id])
    @tour_steps = @tour.steps
    @local = User.find(@tour.local_id)
  end

end
