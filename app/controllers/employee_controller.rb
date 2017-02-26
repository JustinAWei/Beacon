class EmployeeController < ApplicationController
  def create
    current_account.employees.create(employee_params)
    redirect_to dashboard_path
  end

  def employee_params
    params.require(:employee).permit(:name)
  end
end
