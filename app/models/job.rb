class Job < ApplicationRecord
  belongs_to :job_sphere
  belongs_to :employee
  belongs_to :application
end

