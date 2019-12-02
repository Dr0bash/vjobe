class TryToMakeForeignKeyEmployerFavListAndEmp < ActiveRecord::Migration[6.0]
  def change
    add_reference :employers, :favourite_employees
    add_reference :favourite_employees, :employees
  end
end
