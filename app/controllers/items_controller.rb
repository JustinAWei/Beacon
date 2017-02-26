class ItemsController < ApplicationController

  def create
    item = current_account.items.create(item_params.merge({checked_out: false}))
    redirect_to dashboard_path
  end

  def qr
    @item = Item.find(params[:id])
    @qr = RQRCode::QRCode.new("#{@item.id}", size: 1, level: :h)
  end

  def name
    @item = Item.find(params[:id])
    render json: {name: @item.name}
  end

  def checked_out
    @item = Item.find(params[:id])
    render json: {checked_out: !@item.employee_name.nil?}
  end

  def scan
  end

  def checkout
    item = current_account.items.find(Integer(params[:item_name].split('-')[0]))
    item.update_attributes(employee_name: params[:employee_name])
    redirect_to scan_path
  end

  def checkin
    item = current_account.items.find(Integer(params[:item_name].split('-')[0]))
    item.update_attributes(employee_name: nil)
    redirect_to scan_path
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
