class DelEmployeeIdInRequest < ActiveRecord::Migration[6.0]
  def change
    remove_reference :requests, :employees
  end
end
