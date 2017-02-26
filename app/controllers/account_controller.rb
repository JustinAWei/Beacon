class AccountController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to user_dashboard(current_user)
    else
      redirect_to user_login
    end
  end


  def destroy
  end

  def dashboard
  end

  private

  def account_params
    params.require(:account).permit(:email, :password)
  end

end
