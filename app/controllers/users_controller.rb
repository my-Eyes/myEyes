class UsersController < ApplicationController
  def show
    @user = current_user
    @tours = Tour.all
    @saved_tours = @user.saved_tours
    @user_tours = @user.tours
  end
end
