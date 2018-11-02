# frozen_string_literal: true

# Protects us from forgery, neat.
class ApplicationController < ActionController::Base
  before_action :cors_checker, :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :user_activity

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[username email password])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[username email
                                               password current_password])
  end

  def user_activity
    current_user.try :touch
  end

  def cors_checker
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With,'\
      ' Content-Type, Accept, Authorization'
  end
end
