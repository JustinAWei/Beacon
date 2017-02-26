class SessionController < ApplicationController
  def new
  end

  def create
    account = Account.find_by_email(params[:email])
    if account && account.authenticate(params[:password])
      session[:account_id] = account.id
      redirect_to dashboard_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
