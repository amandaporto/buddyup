class AvailabilitiesController < ApplicationController
  before_action :ensure_current_user

  def create
    current_user.availabilities.create(availability_params)

    redirect_to edit_user_path(current_user)
  end

  def destroy
    current_user.availabilities.find(params[:id]).destroy

    redirect_to edit_user_path(current_user)

  end

  private

  def availability_params
    params.require(:availability).permit(:day, :time)
  end
end
