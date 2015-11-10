class AvailabilitiesController < ApplicationController
  before_action :ensure_current_user

  def create
    @user = current_user

    current_user.availabilities.create(availability_params)
  end

  def destroy
    @user = current_user

    current_user.availabilities.find(params[:id]).destroy

    redirect_to edit_profile_users_path
  end

  private

  def availability_params
    params.require(:availability).permit(:day, :time)
  end
end
