class RenameJobsToBookings < ActiveRecord::Migration[5.1]
  def change
    rename_table :jobs, :bookings
  end
end
