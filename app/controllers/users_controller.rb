class UsersController < ApplicationController
  def show
    @user = current_user
    @tours = Tour.all
  end
end
