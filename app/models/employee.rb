class Employee < ApplicationRecord
  has_many :pictures
  has_many :tracked_applications
  belongs_to :favourite_employee
  belongs_to :application
  has_one :job
end
