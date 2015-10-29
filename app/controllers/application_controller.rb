class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception




  protected

    def ensure_current_user
      unless current_user
        redirect_to signin_path
      end
    end

    #Stores user.id in cookie
    def current_user=(user)
      session[:user_id] = user.id
    end

    # Finds user by cookie session[:user_id] sent back by browser
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
    helper_method :current_user  #Sets the helper meethod to be used in views

    def clear_current_user!
      reset_session 
    end

end
