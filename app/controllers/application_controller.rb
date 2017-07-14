class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end
  helper_method :is_admin?

  def is_admin?
    current_user && (current_user.admin == true)
  end
end
