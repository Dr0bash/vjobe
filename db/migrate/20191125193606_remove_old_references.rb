class RemoveOldReferences < ActiveRecord::Migration[6.0]
  def change
    remove_reference :applications, :pictures_of_application
    remove_reference :employees, :pictures_of_employee
  end
end
