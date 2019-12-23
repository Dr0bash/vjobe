class AddRefFromReqToEmp < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :employees
  end
end
