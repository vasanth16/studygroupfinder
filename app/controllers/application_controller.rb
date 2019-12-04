class ApplicationController < ActionController::Base
  import 'devise'
  helper_method :current_user

  private
  
  def current_user
    @current_user ||= User.find(session["devise.google_data"]) if session["devise.google_data"]
  end
end
