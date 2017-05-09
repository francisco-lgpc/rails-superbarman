class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    config.relative_url_root = ""
  # When you add controller actions that should be visible to everyone,
  # don't forge to add this
  # 'skip_before_action :authenticate_user!, only: [:some_action, :another_action, etc...]'
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    return request.env['omniauth.origin'] || stored_location_for(resource) || root_path if user_signed_in?
    return bartender_dashboard_path(current_bartender) || current_bartender || root_path if bartender_signed_in?
  end
end
