class Fix < ActiveRecord::Migration[6.0]
  def change
    remove_reference :requests, :statuses
    rename_table :statuses, :conditions
  end
end
