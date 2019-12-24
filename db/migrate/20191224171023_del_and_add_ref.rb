class DelAndAddRef < ActiveRecord::Migration[6.0]
  def change
    remove_reference :requests_bids, :applications
    add_reference :requests_bids, :requests
  end
end
