class EmployeeController < ApplicationController
  def create

  end

  def employee_params
    params.require(:employee).permit(:name)
  end
end
