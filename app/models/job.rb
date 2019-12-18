class Job < ApplicationRecord
  belongs_to :job_sphere, optional: true
end

