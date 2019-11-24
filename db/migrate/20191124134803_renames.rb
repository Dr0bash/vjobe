class Renames < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :application, :applications
  end


  def self.down
    rename_table :applications, :application
  end
end
