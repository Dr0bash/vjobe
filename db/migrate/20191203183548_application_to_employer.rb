class ApplicationToEmployer < ActiveRecord::Migration[6.0]
  def change
    add_reference :applications, :employers
  end
end
