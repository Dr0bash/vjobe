class EmployeeInputValidator < ActiveModel::Validator
  def validate(record)
    unless (record.email.match(/\w+@\w+\.\w+\z/))
      record.errors[:base] << "Email is incorrect"
    end
  end
end

class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tracked_application
  has_many :applications, through: :tracked_application
  has_many :pictures, as: :owner
  validates :first_name, :second_name, :email, :number, :birth_date, :country, :city, presence: true
  validates :gender, exclusion: { in: [nil] }
  #validates_with EmployeeInputValidator
end