class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(next_lesson:[])
    end
  end

  def after_sign_in_path_for(resource)
  	case resource.class
	  when User
	    authenticated_user_root
	  when Admin
	  	authenticated_admin_root
	  end
	end

end

