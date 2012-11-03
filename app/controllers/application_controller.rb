class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_admin
    redirect_to new_user_session_path unless user_signed_in? && current_user.role == "Admin"
  end

  def require_any
    redirect_to new_user_session_path unless user_signed_in?
  end

end
