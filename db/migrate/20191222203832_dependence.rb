class Dependence < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :conditions
  end
end
