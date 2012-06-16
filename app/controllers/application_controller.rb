class ApplicationController < ActionController::Base
  protect_from_forgery

  #write protected methods under here
  protected

  #check session for user_id to make sure it is valid
  def check_login_status
    if session[:user_id].nil?
      logger.info "session does not have userid..redirect to login"
      redirect_to :action => 'login',:controller => 'users'
    end
  end
end
