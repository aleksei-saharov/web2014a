class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout "application"
  protect_from_forgery with: :exception
  def index
  end
  def after_sign_in_path_for(resource)
    profile_index_path
  end
end
