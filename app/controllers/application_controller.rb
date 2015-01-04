class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up).push(:name)
  end

  def after_sign_in_path_for(resource)
    user_pages_path
  end

  def after_sign_up_path_for(resource)
    orders_path
  end

  def after_inactive_sign_up_path_for(resource)
    orders_path
  end

end
