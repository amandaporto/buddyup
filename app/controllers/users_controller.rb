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
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path
    else
     redirect_to edit_user_path
    end
  end

  def search
    @sport = params[:sport]
    @distance = params.fetch(:distance, 20)
    @users = User.with_sport(@sport).near(current_user.gps_location, @distance)
  end


  private

  def user_params
    params.require(:user).permit(:name, :zip, :email)
  end
end
