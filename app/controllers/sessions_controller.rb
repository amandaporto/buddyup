class SessionsController < ApplicationController

  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      if current_user.profile_complete?
        redirect_to show_profile_users_path
      else
        redirect_to edit_profile_users_path
      end
    else
      redirect_to root_path, alert: "We dont know what happened!! Try again?"
    end
  end


  def destroy
    clear_current_user!
    redirect_to root_path
  end

  def failure
    # render failure.html.erb
  end

end
