class ItemsController < ApplicationController

  def create
    current_account.items.create(item_params)
    redirect_to dashboard_path
  end

  def scan
  end

  def checkout
    employee = current_account.employees.find_by_name(params[:employee_name])
    item = current_account.items.find_by_name(params[:item_name])

    if item.checked_out
      item.checked_out = false
      new_item = employee.items.new
      new_item = item.clone
    else
      item.checked_out = true
      employee.items.find(params[:item_name]).destroy
    end
    redirect_to dashboard_path
  end


  def item_params
    params.require(:item).permit(:name)
  end
end
