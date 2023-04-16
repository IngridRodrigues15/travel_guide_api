class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_user

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      new_preference_path
    else
      super
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :last_name, :picture, :nickname, :current_location, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :last_name, :picture, :nickname, :current_location, :email, :password, :current_password)}
    end

end

