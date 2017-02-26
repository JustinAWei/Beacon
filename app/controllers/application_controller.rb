class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_account
    current_account ||= Account.find_by_id!(session[:account_id])
  end

  helper_method :current_account
end
