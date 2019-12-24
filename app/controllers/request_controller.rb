class RequestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @request = Request.find(params[:id])
  end

  def index_emp
    @request = Request.where(employers_id: current_employer.id)
  end

  def choose_employee
    @employee = RequestsBid.where(requests_id: params[:id])
    @curempinapp = Request.find(params[:id]).employee.id
  end

  def final_apply
    @req = Request.find(params[:request_id])
    if @req.employee.id == 0
      @req.update(employees_id: params[:employee_id], conditions_id: 2)
      @req.save
    else
      @req.update(employees_id: 0, conditions_id: 1)
      @req.save
    end

    path = '/application/' + params[:request_id] + '/choose_employee'
    redirect_to path
  end

  def cancel_apply
    if RequestsBid.where(requests_id: params[:request_id]).where(employees_id: current_employee.id).empty?
      @requestbid = RequestsBid.new(requests_id: params[:request_id], employees_id: current_employee.id)
      @requestbid.save!
    else
      @requestb = RequestsBid.find_by(requests_id: params[:request_id], employees_id: current_employee.id)
      @requestb.destroy
    end

    redirect_to '/search_applications'
  end

  def index
    @request = Request.all
    @requestbid = RequestsBid.where("employees_id = ? ", current_employee.id).pluck(:requests_id)
  end

  def create
    @request = Request.new(request_params)
    @request.save!
    redirect_to '/applications'
  end

  def new
    @id = current_employer.id
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(description: params[:request][:description], address: params[:request][:address], min_salary: params[:request][:min_salary], rating: params[:request][:rating], jobs_id: params[:request][:jobs_id])
    redirect_to '/applications'
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to '/applications'
  end


end

private
def apply_params
  params.permit(:authenticity_token, :employee_id, :application_id)
end

def request_params
  params.require(:request).permit(:description, :address, :min_salary, :jobs_id, :employers_id, :employees_id, :conditions_id)
end

