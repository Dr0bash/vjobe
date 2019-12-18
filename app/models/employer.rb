class EmployerInputValidator < ActiveModel::Validator
  def validate(record)
    unless (record.email.match(/@\w+\.\w+\z/))
      record.errors[:base] << "Email is incorrect"
    end
  end
end

class Employer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favourite_employee
  has_many :employees, through: :favourite_employee
  has_many :applications
  has_many :pictures, as: :owner
  validates :name, :number, :email, presence: true
  #validates_with EmployerInputValidator
end