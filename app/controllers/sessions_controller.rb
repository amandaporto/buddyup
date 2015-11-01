class SessionsController < ApplicationController

  def signup

  end

  def new #signin
    # render new.html.erb
  end

  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      redirect_to user_path
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
