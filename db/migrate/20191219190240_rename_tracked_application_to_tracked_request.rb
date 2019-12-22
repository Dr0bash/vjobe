class RenameTrackedApplicationToTrackedRequest < ActiveRecord::Migration[6.0]
  def change
    rename_table :tracked_applications, :tracked_requests
  end
end
