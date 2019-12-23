class Reference < ActiveRecord::Migration[6.0]
  def change
    remove_reference :requests, :conditions
    add_reference :conditions, :requests
  end
end
