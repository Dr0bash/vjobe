class EmployeeInputValidator < ActiveModel::Validator
  def validate(record)
    if !(record.mail.match(/\A\w+@\w+\.\w+\z/))
      record.errors[:base] << "Email is incorrect"
    end
  end
end

class Employee < ApplicationRecord
  has_many :pictures
  has_many :tracked_applications
  has_many :pictures, as: :owner
  validates :first_name, :second_name, :mail, :number, :password, :gender, :birth_date, :country, :city, presence: true
  validates_with EmployeeInputValidator
end