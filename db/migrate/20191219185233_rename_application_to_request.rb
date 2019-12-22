class RenameApplicationToRequest < ActiveRecord::Migration[6.0]
  def change
    rename_table :applications, :requests
  end
end
