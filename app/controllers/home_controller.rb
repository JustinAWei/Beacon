class HomeController < ApplicationController
  def index
    if current_account
      redirect_to dashboard_path
    end
  end
end
