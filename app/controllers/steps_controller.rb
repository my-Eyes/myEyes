class StepsController < ApplicationController
  def new
    @tour = Tour.find(params[:tour_id])
    @step_number = @tour.steps.count + 1
    @step = Step.new

  end
end
