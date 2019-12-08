class EmployerInputValidator < ActiveModel::Validator
  def validate(record)
    unless (record.mail.match(/@\w+\.\w+\z/))
      record.errors[:base] << "Email is incorrect"
    end
  end
end

class Employer < ApplicationRecord
  has_many :favourite_employee
  has_many :employees, through: :favourite_employee
  has_many :applications
  has_many :pictures, as: :owner
  validates :name, :number, :password, :mail, presence: true
  validates_with EmployerInputValidator
end