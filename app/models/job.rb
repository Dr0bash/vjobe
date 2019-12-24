class Job < ApplicationRecord
  belongs_to :job_sphere,  optional: true, foreign_key: :job_spheres_id
end

