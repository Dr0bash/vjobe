class CreateTableStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :title, :null => false
    end

    add_reference :requests, :statuses
  end
end
