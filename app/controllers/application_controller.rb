class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  require 'will_paginate/array'
  require 'html_truncator'
  protected
    # check login
    def authenticate_user
      if session[:user_id]
        @current_user = User.find session[:user_id]
        return true
      else
        redirect_to(:controller => 'sessions',:action => 'index')
        return false
      end
    end
    # save state session
    def save_login_state
      if session[:user_id]
        return true
      else
        return false
      end
    end
    # redirect page not found
    def page_not_found
      respond_to do |format|
	      format.html { render template: 'errors/not_found_error', layout: 'layouts/application', status: 404 }
	      format.all  { render nothing: true, status: 404 }
	    end
    end
    # role model call
    def role_model
      return Role.find_by_set_default(1) #-> returns first instance of `OtherModel` & then displays "name"
    end
    # get avatar
    def get_avatar
      if Profile.exists?(:user_id => current_user.id)
        return Profile.find_by_user_id(current_user.id).image.url(:tiny)
      else
        return "/assets/avatar5.png"
      end
    end
    # get randon string
    def random_str
      return (0...6).map { ('a'..'z').to_a[rand(26)] }.join
    end
    # create random token
    def create_token
      return (0..100).map {('a'..'z').to_a[rand(26)]}.join
    end
    # get randon username
    def random_username
      return (0...4).map { ('a'..'z').to_a[rand(26)] }.join + Time.now.strftime("%d%m%Y%H%M")
    end
    # name of application
    def global_title
    	return " - Disperidag Provinsi Kalimantan Barat"
    end

    def skin
    	return "skin-dark-blue fixed"
    end
    helper_method :current_user
    # direct exception page cancan
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_path, :alert => exception.message
    end

	  private
	  def current_user
	    @current_user ||= User.find(session[:user_id]) if session[:user_id]
	  end
end
