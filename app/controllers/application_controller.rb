class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :current_user,
                :logged_in?

  def after_sign_in_path_for(resource)
    if resource.admin_check
      tests_path
    else
      admin_tests_path
    end
  end
end
