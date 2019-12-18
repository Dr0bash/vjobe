class ReferencesJobJobspheres < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:job_spheres,:jobs)
    add_reference(:jobs, :job_spheres)
  end
end
