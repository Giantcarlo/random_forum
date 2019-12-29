class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?

  add_flash_types :danger, :info, :warning, :success


  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation)}
  end



end
