class ApplicationController < ActionController::Base
  before_action :ensure_user!

  def ensure_user!
    unless current_user
      sign_in AnonymousUser.create!
    end
  end
end
