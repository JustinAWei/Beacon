class ItemsController < ApplicationController

  def create
    puts current_account
    item = current_account.items.create(item_params)
    puts 'asad'
    item.checked_out = false
    puts 'false'
    item.save!
    puts 'saved'
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
