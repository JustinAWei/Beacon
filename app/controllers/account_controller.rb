class AccountController < ApplicationController
  def new
  end

  def create
    account = Account.new(account_params)

    if account.save
      session[:account_id] = account.id
      redirect_to dashboard_path
    else
      redirect_to signup_path
    end
  end

  def dashboard
  end

  private
    def account_params
      params.require(:account).permit(:email, :password, :password_confirmation, :name)
    end
end
