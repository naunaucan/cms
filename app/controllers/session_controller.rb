class SessionController < ApplicationController
  # before_filter :authenticate_user, :only => [:home, :profile, :setting]
  # before_filter :save_login_state, :only => [:login, :login_attempt]
  def index
    if session[:user_id]
      if role_name == "admin" #change redirect dynamicly
        redirect_to users_path
        return true
      else
        redirect_to :action => 'index'
        return false
      end
    end
  end

  def login_attempt
    redirect_to users_path
    # authorized_user = User.authenticate(params[:username],params[:password])
    # if authorized_user
    #
    #   if authorized_user.is_active == false
    #     flash[:alert] = "Invalid Username or Password"
    #     session[:user_id] = nil
    #     redirect_to :action => 'index'
    #     return false
    #   else
    #     session[:user_id] = authorized_user.id
    #     redirect_to :action => 'index'
    #     return true
    #   end
    #
    # else
    #   flash[:alert] = "Invalid Username or Password"
    #   render "index"
    # end
  end

  def logout
    reset_session
    session[:user_id] = nil
  	redirect_to login_path
  end

  def create
    password = random_str
    user = User.from_omniauth(env["omniauth.auth"],password)
    session[:user_id] = user.id
    # UserMailer.facebook_password(current,password).deliver
    redirect_to root_url
  end

  def logon

  end
end
