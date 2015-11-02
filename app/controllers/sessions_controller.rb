class SessionsController < ApplicationController

  def signup
    # If signup, redirect to page to add profile information
  end

  def new #signin
    # render new.html.erb #PROBABLY DONT NEED THIS, OMNIAUTH
  end

  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      redirect_to user_path(current_user)
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
