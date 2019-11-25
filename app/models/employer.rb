class Employer < ApplicationRecord
  has_one :favourite_employee
  has_many :applications
end
