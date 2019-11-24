class Application < ApplicationRecord
  belongs_to :employers
  has_one :employees
  has_many :pictures_of_application
  has_one :jobs
end

