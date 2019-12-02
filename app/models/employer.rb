class EmployerInputValidator < ActiveModel::Validator
  def validate(record)
    if !(record.mail.match(/\A\w+@\w+\.\w+\z/))
      record.errors[:base] << "Email is incorrect"
    end
  end
end

class Employer < ApplicationRecord
  has_one :favourite_employee
  has_many :applications
  has_many :pictures, as: :owner
  validates :name, :number, :password, :mail, presence: true
  validates_with EmployerInputValidator
end