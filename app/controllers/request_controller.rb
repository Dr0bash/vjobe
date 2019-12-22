class RequestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    #@request = Request.where(["employee_id = :ei", {ei: current_employer.id}])
    #@request = Request.where(employer_id: current_employer.id).joins(:job).left_joins(:employee)
    @request = Request.where(employer_id: current_employer.id).joins(:job)

  end

  def index
    #@request = Request.all
    #sql = "SELECT e.name as name, r.description, r.address, r.min_salary from requests r join employers e on e.id = r.employers_id"
    #sql = "SELECT description, address, min_salary from requests"
    #@request = Request.all
    @request = Request.joins(:employer).joins(:job)
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
end

private
def request_params
  params.require(:request).permit(:description, :address, :min_salary, :job_id, :employer_id, :employee_id)
end

