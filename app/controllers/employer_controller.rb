class EmployerController < ApplicationController
  def show
    @employer = Employer.find(params[:id])
  end

  def new
    @employer = Employer.new
  end

  def index
    @employer = Employer.all
  end

  def create
    @employer = Employer.new(employer_params)
    @employer.save
    redirect_to root_path
  end
end

private
def employer_params
  params.require(:employer).permit(:name, :number, :country, :city, :email,:password, :password_confirmation)
end
