require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  responders :flash


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Devise options
  helper_method :current_user
  
  private
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
  	devise_parameter_sanitizer.for(:sign_up) do |u|
  		u.permit(:name, :email, :password, :password_confirmation)
  	end
  	devise_parameter_sanitizer.for(:account_update) do |u|
  		u.permit(:name, :email, :password, :password_confirmation)
  	end
  end


  def after_sign_in_path_for(resource)
    session[:previous_url] || courses_path
  end

end
