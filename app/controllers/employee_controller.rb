class EmployeeController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def index
    @employee = Employee.all
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to root_path
  end
end

private
def employee_params
  params.require(:employee).permit(:first_name, :second_name, :number, :gender, :birth_date, :country, :city, :email, :password, :password_confirmation)
end