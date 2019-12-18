class MainPageController < ApplicationController
  def index
    if !(current_employer.nil?)
      @currentEmp = current_employer.id
    elsif !(current_employee.nil?)
      @currentEmpl = current_employee.id
    end
  end
end
