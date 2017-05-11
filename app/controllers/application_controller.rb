class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :username, :first_name, :last_name) }
          devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit({ roles: [] }, :email, :password, :username) }
          devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ keys: [:username] }, :email, :password, :password_confirmation, :username, :first_name, :last_name, :username) }

    end
  

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
