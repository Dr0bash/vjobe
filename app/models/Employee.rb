class Employee < ApplicationRecord
  has_many :employee_pictures
  has_one :jobs
end
