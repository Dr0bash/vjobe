class RenameAndRemoveDependence < ActiveRecord::Migration[6.0]
  def change
    rename_table :pictures_of_application, :application_pictures
    rename_table :pictures_of_employee, :employee_pictures
    rename_table :pictures_of_employer, :employer_pictures
    remove_reference :jobs, :job_spheres
  end
end
