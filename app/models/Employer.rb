class Employer < ApplicationRecord
  has_one :favourite_employees
  has_many :applications
end
