class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :authenticate_user!
  helper_method :resource_name, :resource, :devise_mapping 

 

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

   

   
   protected
   
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email,:password, :password_confirmation])
    end
  
end
