class ApplicationController < ActionController::Base
  # proteger toutes les routes par defaut
  # before_action :authenticate_user!

  # before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def after_sign_in_path_for(user)
    user_path(user)
  end
end
