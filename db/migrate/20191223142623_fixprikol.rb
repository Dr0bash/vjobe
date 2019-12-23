class Fixprikol < ActiveRecord::Migration[6.0]
  def change
    remove_reference :conditions, :requests
    add_reference :requests, :conditions
  end
end
