class CreateTableForRequestForApplyingApplication < ActiveRecord::Migration[6.0]
  def change
    create_table :requests_bids do |t|

    end
    add_reference :requests_bids, :employees
    add_reference :requests_bids, :applications
  end
end
