class Employer < ApplicationRecord
  has_one :favourite_employee
  has_many :applications
  has_many :pictures
end
