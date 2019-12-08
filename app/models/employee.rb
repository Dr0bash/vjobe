class EmployeeInputValidator < ActiveModel::Validator
  def validate(record)
    unless (record.mail.match(/\w+@\w+\.\w+\z/))
      record.errors[:base] << "Email is incorrect"
    end
  end
end

class Employee < ApplicationRecord
  has_many :tracked_application
  has_many :applications, through: :tracked_application
  has_many :pictures, as: :owner
  validates :first_name, :second_name, :mail, :number, :password, :birth_date, :country, :city, presence: true
  validates :gender, exclusion: { in: [nil] }
  #validates_with EmployeeInputValidator
end