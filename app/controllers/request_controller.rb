class RequestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @request = Request.find(params[:id])
  end

  def index_emp
    @request = Request.where(employer_id: current_employer.id).joins(:job)
    #@request = Request.where(employer_id: current_employer.id).joins(:condition)#.joins(:employee)#.joins(:status)
    #@request = Request.where(employer_id: current_employer.id).joins("INNER JOIN statuses ON requests.status_id = statuses.id")
  end

  def index
    @request = Request.joins(:employer).joins(:job)
    #@requestbid = RequestsBid.find_by(employee_id: current_employee_id, application_id: )
   # @requestbid = RequestsBid.find_by(employee_id: current_employee.id).map{|r| r.application_id}
    @requestbid = RequestsBid.pluck(:application_id)
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

  def cancel_apply
    puts(params[:type])
    if params[:type] == "0"
      @requestb = RequestsBid.find_by(application_id: params[:application_id], employee_id: params[:employee_id])
      @requestb.destroy
    else
      @requestbid = RequestsBid.new(application_id: params[:application_id], employee_id: params[:employee_id])
      @requestbid.save!
    end

    redirect_to '/search_applications'
  end
end

private
def apply_params
  params.permit(:authenticity_token, :employee_id, :application_id)
end

def request_params
  params.require(:request).permit(:description, :address, :min_salary, :job_id, :employer_id, :employee_id)
end

