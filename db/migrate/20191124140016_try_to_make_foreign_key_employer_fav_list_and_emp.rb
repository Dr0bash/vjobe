class TryToMakeForeignKeyEmployerFavListAndEmp < ActiveRecord::Migration[6.0]
  def change
    add_reference :employers, :favourite_employees
    add_reference :favourite_employees, :employees
    add_reference :applications, :employees
    add_reference :applications, :pictures_of_application
    add_reference :applications, :jobs
    add_reference :jobs, :job_spheres
    add_reference :employees, :pictures_of_employee
    add_reference :employees, :jobs
    add_reference :employers, :favourite_employees
    add_reference :job_spheres, :jobs
  end
end
