class EmployeeController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    #@employee = Employee.new(params[:employee])
    @employee = Employee.new(employee_params)
    @employee.save
  end
end

private
def employee_params
  params.require(:employee).permit(:first_name, :second_name)
end