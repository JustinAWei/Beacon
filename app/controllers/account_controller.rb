class AccountController < ApplicationController
  def new
    if current_account
      redirect_to dashboard_path
    else
      if params[:account] && params[:account][:name]
        @account_name = params[:account][:name]
      end
    end
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
    @items = current_account.items
  end

  private
    def account_params
      params.require(:account).permit(:email, :password, :password_confirmation, :name)
    end
end
