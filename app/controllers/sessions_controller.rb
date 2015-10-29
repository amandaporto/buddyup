class SessionsController < ApplicationController



  def new #signin
    # render new.html.erb
  end

  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      redirect_to root_path #After signing in, redirect to overview screen(users#show)
    else
      redirect_to signin_path, alert: "I dont know what happened!! Try again?"
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
