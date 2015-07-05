class StepsController < ApplicationController
   skip_before_action :verify_authenticity_token

   def new
    @user = current_user
    @tour = Tour.find(params[:tour_id])
    @step_number = @tour.steps.count + 1
    @step = Step.new
  end

  def create
    tour = Tour.find(params[:tour_id])
    number_of_steps = tour.steps.count

    step = Step.new(
                    tour_id: tour.id,
                    text: params[:text],
                    number: ( number_of_steps + 1),
                    photo_id: session[:photo_id],
                    location_id: session[:location_id]
      )

    if step.save
      p '*' * 30
      p 'saved'
      p '*' * 30
      session[:photo_id] = nil
      session[:location_id] = nil
      redirect_to action: 'new'
    else
      p '*' * 30
      p 'didnt save'
      p '*' * 30
      @step = step
      @tour = tour
      @user = current_user
      @step_number = number_of_steps + 1

      redirect_to new_user_tour_step_path
    end
  end
end
