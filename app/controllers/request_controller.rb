class RequestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @request = Request.find(params[:id])
  end

  def index_emp
    @request = Request.where(employer_id: current_employer.id).joins(:job).joins(:condition).joins(:employee)
  end

  def choose_employee
    @employee = RequestsBid.where(request_id: params[:id]).joins(:request).joins(:employee)
   # @requestbid = RequestsBid.where.().pluck(:request_id)
   @curempinapp = Request.find(params[:id]).employee_id
  end

  def final_apply
    @req = Request.find(params[:request_id])
    if @req.employee.id == 0
      @req.update(employee_id: params[:employee_id], condition_id: 2)
      @req.save
    else
      @req.update(employee_id: 0, condition_id: 1)
      @req.save
    end

    path = '/application/' + params[:request_id] + '/choose_employee'
    redirect_to path
  end

  def cancel_apply
    if RequestsBid.where(request_id: params[:request_id]).where(employee_id: current_employee.id).empty?
      @requestbid = RequestsBid.new(request_id: params[:request_id], employee_id: current_employee.id)
      @requestbid.save!
    else
      @requestb = RequestsBid.find_by(request_id: params[:request_id], employee_id: current_employee.id)
      @requestb.destroy
    end

    redirect_to '/search_applications'
  end

  def index
    @request = Request.joins(:employer).joins(:job)
    #@requestbid = RequestsBid.pluck(:request_id)
    @requestbid = RequestsBid.where(employee_id: current_employee.id).pluck(:request_id)
  end

  def create
    @request = Request.new(request_params)
    @request.save
    redirect_to root_path
  end

  def new
    @id = current_employer.id
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(description: params[:request][:description], address: params[:request][:address], min_salary: params[:request][:min_salary], rating: params[:request][:rating], job_id: params[:request][:job_id])
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
  params.require(:request).permit(:description, :address, :min_salary, :job_id, :employer_id, :employee_id)
end

