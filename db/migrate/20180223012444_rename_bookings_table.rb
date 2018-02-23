class RenameBookingsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :bookings, :requests
  end
end
