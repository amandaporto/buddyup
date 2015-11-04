class UsersController < ApplicationController
  before_action :ensure_current_user

  def show
    @user = User.find(params[:id])

  end

  def edit
    #make sure user found is current user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path
      return
    end

  end

  def update

  end

  def search
    @sport = params[:sport]
    @distance = params.fetch(:distance, 20)
    @users = User.with_sport(@sport).near(current_user.gps_location, @distance)
  end
end
