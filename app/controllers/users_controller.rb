class UsersController < ApplicationController
  before_action :ensure_current_user

  def show_profile
    @user = current_user

    render :show
  end

  def edit_profile
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to show_profile_users_path
    else
      render :edit_profile
    end
  end

  def search
    @sport = params[:sport]
    @distance = params.fetch(:distance, 20)
    @users = User.with_sport(@sport).where("user_id <> ?", current_user.id).near(current_user.gps_location, @distance)

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.name
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :zip, :street, :email)
  end
end
