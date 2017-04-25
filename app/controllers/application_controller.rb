class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # When you add controller actions that should be visible to everyone,
  # don't forge to add this
  # 'skip_before_action :authenticate_user!, only: [:some_action, :another_action, etc...]'
  before_action :authenticate_user!
end
