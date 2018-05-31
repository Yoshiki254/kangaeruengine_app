class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(name:[], name_kana:[], birthday:[], tel:[], job:[], image:[], date_time:[])
    end
  end


  # def after_sign_up_path_for(resource)
  #   credit_path 
  #   return request.env['omniauth.origin'] || session[:return_to] 
  # end 
  
  def after_sign_in_path_for(resource)
    if @user
      user_path(current_user.id) 
    end
  end
  
end

