class DelFullNameColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :employees, :full_name
  end
end
