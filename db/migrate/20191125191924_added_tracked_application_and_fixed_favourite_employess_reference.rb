class AddedTrackedApplicationAndFixedFavouriteEmployessReference < ActiveRecord::Migration[6.0]
  def change
    create_table :tracked_applications
    add_reference :tracked_applications, :employers
    add_reference :tracked_applications, :applications
    add_reference :favourite_employees, :employers
    remove_reference :employers, :favourite_employees
  end
end
