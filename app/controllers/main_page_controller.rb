class MainPageController < ApplicationController
  def index
    if !(current_employee.nil?)
      @employee = Employee.find(current_employee.id)
    elsif !(current_employer.nil?)
      @employer = Employer.find(current_employer.id)
    end
  end
end
