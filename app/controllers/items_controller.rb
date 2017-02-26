class ItemsController < ApplicationController

  def create
    item = current_account.items.create(item_params)
    item.checked_out = false
    item.save
    redirect_to dashboard_path
  end

  def scan
  end

  def checkout
    item = current_account.items.find_by_name(params[:item_name])
    redirect_to dashboard_path
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
