class ItemsController < ApplicationController

  def create

  end

  def scan
  end

  def checkout
    employee = Employee.find_by_name(params[:employee_name])
    item = Item.find_by_name(params[:item_name])

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

end
