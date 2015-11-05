class ActivitiesController < ApplicationController
  before_action :ensure_current_user


  def create
    current_user.activities.create(activity_params)

    redirect_to edit_user_path(current_user)
  end


  private

  def activity_params
    params.require(:activity).permit(:sport, :skill_level)
  end
end
