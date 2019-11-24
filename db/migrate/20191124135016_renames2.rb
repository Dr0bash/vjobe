class Renames2 < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :employee, :employees
    rename_table :employer, :employers
    rename_table :job, :jobs
  end


  def self.down
    rename_table :employees, :employee
    rename_table :employers, :employer
    rename_table :jobs, :job
  end
end
